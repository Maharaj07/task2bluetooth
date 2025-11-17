group 'io.github.edufolly.flutterbluetoothserial'
version '1.0-SNAPSHOT'

buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:8.1.2'
    }
}

apply plugin: 'com.android.library'

android {
    namespace "io.github.edufolly.flutterbluetoothserial"     // REQUIRED FIX
    compileSdkVersion 34

    defaultConfig {
        minSdkVersion 21
    }

    compileOptions {
        sourceCompatibility JavaVersion.VERSION_11
                targetCompatibility JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = "11"
    }

    buildTypes {
        release {
            minifyEnabled false
        }
    }
}

repositories {
    google()
    mavenCentral()
}

dependencies {
    implementation 'androidx.appcompat:appcompat:1.6.1'        // FIXED
    implementation "org.jetbrains.kotlin:kotlin-stdlib-jdk7:1.8.22"
}
