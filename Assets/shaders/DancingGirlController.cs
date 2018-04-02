using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DancingGirlController : MonoBehaviour {

    private float dissolvePercentage;
    private float accelerate;
    private GameObject stage;

    /*
	// Use this for initialization
	void Start () {
        this.stage = GameObject.Find("Stage");
        this.dissolvePercentage = 0.0f;
        this.accelerate = 0.02f;
	}

    // Update is called once per frame
    void Update()
    {
        if (this.dissolvePercentage < 0.0f || 0.8f < this.dissolvePercentage) {
            if (1.0f < this.dissolvePercentage) {
                Vector3 newPos = Random.insideUnitSphere * 3;
                newPos.y = 0.0f;
                this.transform.position = newPos;
            }
            this.accelerate *= -1;
        }
        Material m;
        m = this.GetComponent<Renderer>().material;
        m.SetFloat("_DissolvePercentage", this.dissolvePercentage);
        m = this.stage.GetComponent<Renderer>().material;
        m.SetFloat("_DissolvePercentage", this.dissolvePercentage);
        this.dissolvePercentage += this.accelerate;
	}
    */
}
