.class Landroid/taobao/windvane/jsbridge/api/WVBluetooth$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->requestAuthorization(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

.field final synthetic val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$2;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$2;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$2;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {v2}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$000(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    const-string/jumbo v3, "msg"

    if-nez v2, :cond_0

    const-string v1, "DEVICE_NOT_SUPPORT"

    .line 4
    invoke-virtual {v0, v3, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$2;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 6
    :cond_0
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$2;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {v2}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$000(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$2;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    invoke-static {v2}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->access$000(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "BLUETOOTH_POWERED_OFF"

    .line 8
    invoke-virtual {v0, v3, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$2;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v2, "state"

    const-string/jumbo v3, "poweredOn"

    .line 10
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "value"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 12
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$2;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 13
    :catchall_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$2;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    :goto_0
    return-void
.end method
