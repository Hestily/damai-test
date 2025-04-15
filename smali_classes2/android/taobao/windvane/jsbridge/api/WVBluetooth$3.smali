.class Landroid/taobao/windvane/jsbridge/api/WVBluetooth$3;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->findDevices(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
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
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$3;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object p3, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$3;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$100(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p3, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$3;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$100(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo p3, "name"

    .line 5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "deviceId"

    .line 6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object p3, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$3;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$200(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object p3

    const-string v0, "WV.Event.WVBluetooth.discoverDevice"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v0, p2}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "WVBluetooth"

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "find device : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ads : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
