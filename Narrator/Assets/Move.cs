using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Move : MonoBehaviour
{
    public LayerMask mask;
    CharacterController controller;
    void Start()
    {
      controller=GetComponent<CharacterController>();
    }
    void Update()
    {
        Vector3 direction=Vector3.zero;

        direction=new Vector3(Input.GetAxis("Horizontal"),0,0);

        controller.Move(direction*Time.deltaTime*10f);

        if(Input.GetKeyDown(KeyCode.E))
        {
            if(Physics.CheckSphere(transform.position,2f,mask))
            {
               Collider[] colliders=Physics.OverlapSphere(transform.position,2.0f,mask);
               float mindistance=3.0f;
               Collider interaction=null;
               foreach(Collider collider in colliders)
                {
                    if(collider.GetComponent<Character>())
                    {
                        float distance=Vector3.Distance(collider.transform.position,transform.position);
                        if(distance<mindistance )
                        {
                            mindistance=distance;
                            interaction=collider;
                        }
                    }    
                }
                if(interaction)
                    interaction.GetComponent<Character>().Speak();

            }
        }
      
    }
    //  void OnControllerColliderHit(ControllerColliderHit hit)
    //  {
    //      Debug.Log(hit.gameObject.name);
    //  }  
    void OnTriggerEnter(Collider other)
    {
        Debug.Log(other.gameObject.name);
    }
     void OnCollisionEnter(Collision other)
    {
        Debug.Log(other.gameObject.name);
    }
}
