using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;

public class StoryManager : MonoBehaviour
{
   [SerializeField] private TextAsset globalAsset;
    private Story globalScript;

    void Start()
    {
        globalScript=new Story(globalAsset.text);
    }

}
