package com.example.lab_test2;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class Reg extends AppCompatActivity {

    private Button reg ;
    private TextView em , ps , dob , nm ;

    FirebaseAuth auth ;
    private DatabaseReference drf ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_reg);

        auth = FirebaseAuth.getInstance() ;
        drf = FirebaseDatabase.getInstance().getReference("users").push();

        reg = findViewById(R.id.regis) ;
        em = findViewById(R.id.emailr) ;
        ps = findViewById(R.id.passr) ;
        dob = findViewById(R.id.dob) ;
        nm = findViewById(R.id.name) ;

        reg.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String email = em.getText().toString() ;
                String pass = ps.getText().toString() ;
                String DOB = dob.getText().toString() ;
                String name = nm.getText().toString() ;

                auth.createUserWithEmailAndPassword(email,pass).addOnCompleteListener(new OnCompleteListener<AuthResult>() {
                    @Override
                    public void onComplete(@NonNull Task<AuthResult> task) {
                        if(task.isSuccessful()){
                            Toast.makeText(Reg.this, "Successfull", Toast.LENGTH_SHORT).show();
                            User us = new User(name , email , DOB , pass) ;
                            drf.addListenerForSingleValueEvent(new ValueEventListener() {
                                @Override
                                public void onDataChange(@NonNull DataSnapshot snapshot) {
                                    drf.setValue(us) ;
                                }

                                @Override
                                public void onCancelled(@NonNull DatabaseError error) {

                                }
                            });
                            Intent intent = new Intent(Reg.this , Homepage.class);
                            startActivity(intent);

                        }
                        else{
                            Toast.makeText(Reg.this, task.getException().getMessage().toString(), Toast.LENGTH_SHORT).show();
                        }
                    }
                });


            }
        });
    }
}