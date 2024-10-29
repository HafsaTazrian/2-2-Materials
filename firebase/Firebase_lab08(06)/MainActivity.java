package com.example.lab08;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class MainActivity extends AppCompatActivity {

    private DatabaseReference drf ;
    private Button btn , btn2 , del;
    private TextView n1 , r1 , n2 , r2 ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        drf = FirebaseDatabase.getInstance().getReference();

        btn = findViewById(R.id.save);

        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //Toast.makeText(MainActivity.this, "neww", Toast.LENGTH_SHORT).show();
                n1 = findViewById(R.id.n1);
                r1 = findViewById(R.id.res1);
                String name = n1.getText().toString();
                String email = r1.getText().toString();
                String userId = "2";
                Toast.makeText(MainActivity.this, name, Toast.LENGTH_SHORT).show();
                user usr = new user(name, email);
                drf.child("users").child(userId).setValue(usr);
            }
        });

        btn2 = findViewById(R.id.show) ;

        btn2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                n2 = findViewById(R.id.n2);
                r2 = findViewById(R.id.res2);
                String userId = "2" ;
                DatabaseReference usrR = drf.child("users").child(userId);

                usrR.addListenerForSingleValueEvent(new ValueEventListener() {
                    @Override
                    public void onDataChange(@NonNull DataSnapshot snapshot) {
                        if(snapshot.exists())
                        {
                            user ussr = snapshot.getValue(user.class);
                            if(ussr != null){
                                n2.setText(ussr.username);
                                r2.setText(ussr.email);
                            }
                        }
                    }

                    @Override
                    public void onCancelled(@NonNull DatabaseError error) {

                    }
                });
            }
        });

        del = findViewById(R.id.del);

        del.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String name = "faysal";
                DatabaseReference drf2 = FirebaseDatabase.getInstance().getReference().child("users");
                drf2.addListenerForSingleValueEvent(new ValueEventListener() {
                    @Override
                    public void onDataChange(@NonNull DataSnapshot snapshot) {
                        for(DataSnapshot userSnapshot : snapshot.getChildren()){
                            user ussr = userSnapshot.getValue(user.class);
                            if(ussr != null && ussr.username.equals(name)){
                                userSnapshot.getRef().removeValue().addOnSuccessListener(new OnSuccessListener<Void>() {
                                    @Override
                                    public void onSuccess(Void unused) {
                                        Toast.makeText(MainActivity.this, "Deleted", Toast.LENGTH_SHORT).show();
                                    }
                                }).addOnFailureListener(new OnFailureListener() {
                                    @Override
                                    public void onFailure(@NonNull Exception e) {
                                        Toast.makeText(MainActivity.this, "failed", Toast.LENGTH_SHORT).show();
                                    }
                                });
                                return;
                            }
                        }
                        Toast.makeText(MainActivity.this, "Not Found", Toast.LENGTH_SHORT).show();
                    }

                    @Override
                    public void onCancelled(@NonNull DatabaseError error) {

                    }
                });

            }
        });
    }
}