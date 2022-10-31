package com.tranconguet.income_calculator_app

import android.app.Activity
import android.os.Bundle
import android.os.PersistableBundle
import android.util.Log
import androidx.appcompat.app.AppCompatActivity

class PlatformSampleActivity : Activity() {

    init {
        Log.d("tvcong2","#PlatformSampleActivity init")
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        Log.d("tvcong2","#PlatformSampleActivity onCreate")
        setContentView(R.layout.activity_platform_sample)
    }

}