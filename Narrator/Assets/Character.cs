using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Character : MonoBehaviour
{
    public BasicInkExample inkExample;
    public void Speak()
    {
        inkExample.StartStory(name);
    }
}
