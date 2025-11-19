package com.cs.clash_sing_app

import android.app.Application
import android.util.Log
import com.tencent.mmkv.MMKV

class MyApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        val rootDir = MMKV.initialize(this)
        Log.d("MyApplication", "MMKV rootDir: $rootDir")
    }
}