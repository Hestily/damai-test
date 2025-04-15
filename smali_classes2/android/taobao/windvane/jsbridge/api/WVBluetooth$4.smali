.class Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/jsbridge/api/WVBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onCharacteristicChanged : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WVBluetooth"

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "deviceId"

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {v1}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$500(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "serviceId"

    .line 4
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "characteristicId"

    .line 5
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "value"

    .line 6
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$1000(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object p2

    const-string v0, "WV.Event.WVBluetooth.characteristicValueChanged"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    const-string/jumbo p1, "value"

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCharacteristicRead : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVBluetooth"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$800(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    if-nez p3, :cond_0

    .line 4
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 5
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v0, p1, p3}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 7
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$800(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$800(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p1

    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FAILED_TO_READ: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "msg"

    invoke-virtual {v0, p2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$800(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    .line 12
    :goto_0
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$802(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    :cond_1
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    const-string/jumbo p1, "value"

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCharacteristicWrite : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVBluetooth"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$900(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    if-nez p3, :cond_0

    .line 4
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 5
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v0, p1, p3}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 7
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$900(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$900(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FAILED_TO_WRITE: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "msg"

    invoke-virtual {v0, p2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$900(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    .line 12
    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$902(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p1, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$302(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;I)I

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onConnectionStateChange: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVBluetooth"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$400(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    .line 4
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$400(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p1

    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$400(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p1

    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    .line 6
    :goto_0
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$402(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 7
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$500(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    .line 8
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "deviceId"

    .line 9
    iget-object p3, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$500(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$600(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object p1

    const-string p2, "WV.Event.WVBluetooth.GATTServerDisconnected"

    const-string p3, ""

    invoke-interface {p1, p2, p3}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onDescriptorWrite : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVBluetooth"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onReadRemoteRssi : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVBluetooth"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServicesDiscovered : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WVBluetooth"

    invoke-static {v0, p2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$700(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 8
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "serviceId"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string/jumbo v0, "services"

    .line 11
    invoke-virtual {p1, v0, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 12
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$700(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    .line 13
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$702(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    :cond_1
    return-void
.end method
