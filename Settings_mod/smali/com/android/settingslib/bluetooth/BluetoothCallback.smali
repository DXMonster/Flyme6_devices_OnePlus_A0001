.class public interface abstract Lcom/android/lineageoslib/bluetooth/BluetoothCallback;
.super Ljava/lang/Object;
.source "BluetoothCallback.java"


# virtual methods
.method public abstract onBluetoothStateChanged(I)V
.end method

.method public abstract onConnectionStateChanged(Lcom/android/lineageoslib/bluetooth/CachedBluetoothDevice;I)V
.end method

.method public abstract onDeviceAdded(Lcom/android/lineageoslib/bluetooth/CachedBluetoothDevice;)V
.end method

.method public abstract onDeviceBondStateChanged(Lcom/android/lineageoslib/bluetooth/CachedBluetoothDevice;I)V
.end method

.method public abstract onDeviceDeleted(Lcom/android/lineageoslib/bluetooth/CachedBluetoothDevice;)V
.end method

.method public abstract onScanningStateChanged(Z)V
.end method
