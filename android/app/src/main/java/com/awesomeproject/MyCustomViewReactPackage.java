package com.awesomeproject;

import android.app.Application;

import com.facebook.react.ReactApplication;
import com.facebook.react.ReactNativeHost;
import com.facebook.react.ReactPackage;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.shell.MainReactPackage;
import com.facebook.react.uimanager.ViewManager;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class MyCustomViewReactPackage extends Application implements ReactApplication {


    public List<ViewManager> createViewManagers(ReactApplicationContext reactContext) {
        return Arrays.<ViewManager>asList( new MyCustomViewManager() );
    }


    public List<NativeModule> createNativeModules(ReactApplicationContext reactContext) {
        List<NativeModule> modules = new ArrayList<>();
        return modules;
    }


    protected List<ReactPackage> getPackages() {
        return Arrays.<ReactPackage>asList(
                new MainReactPackage(),
                (ReactPackage) new MyCustomViewReactPackage() // new line!!!
        );
    }


    protected String getJSMainModuleName() {
        return "index";
    }

    @Override
    public ReactNativeHost getReactNativeHost() {
        return null;
    }
}
