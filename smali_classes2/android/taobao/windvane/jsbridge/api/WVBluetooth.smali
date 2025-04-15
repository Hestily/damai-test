.class public Landroid/taobao/windvane/jsbridge/api/WVBluetooth;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVBluetooth"


# instance fields
.field private mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mConnectCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private mCurrentConnectionState:I

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mGetServiceCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private mKnownDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mReadValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private mWriteValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 4
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mConnectCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 5
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mReadValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 6
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mWriteValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 7
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 8
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mKnownDevices:Ljava/util/Set;

    .line 9
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mGetServiceCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mCurrentConnectionState:I

    .line 11
    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;-><init>(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mKnownDevices:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object p0
.end method

.method static synthetic access$200(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object p0
.end method

.method static synthetic access$302(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mCurrentConnectionState:I

    return p1
.end method

.method static synthetic access$400(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mConnectCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p0
.end method

.method static synthetic access$402(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mConnectCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p1
.end method

.method static synthetic access$500(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic access$600(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object p0
.end method

.method static synthetic access$700(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mGetServiceCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p0
.end method

.method static synthetic access$702(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mGetServiceCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p1
.end method

.method static synthetic access$800(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mReadValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p0
.end method

.method static synthetic access$802(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mReadValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p1
.end method

.method static synthetic access$900(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mWriteValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p0
.end method

.method static synthetic access$902(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mWriteValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p1
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    const-string v2, "WVBluetooth"

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Device not found.  Unable to connect."

    .line 3
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v0, v1, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const-string p1, "Trying to create a new connection."

    .line 5
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const-string p1, "BluetoothAdapter not initialized or unspecified address."

    .line 6
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public connectDevice(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string/jumbo v2, "msg"

    if-nez v1, :cond_0

    const-string p1, "DEVICE_NOT_SUPPORT"

    .line 3
    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "BLUETOOTH_DISABLED"

    .line 6
    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 8
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "deviceId"

    const-string v3, ""

    .line 9
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 11
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->connect(Ljava/lang/String;)Z

    .line 12
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mConnectCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    :cond_2
    const-string p1, "FAILED_TO_CONNECT"

    .line 15
    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_0
    return-void
.end method

.method public disconnect(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string/jumbo v1, "msg"

    if-nez v0, :cond_0

    const-string v0, "DEVICE_NOT_SUPPORT"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BLUETOOTH_DISABLED"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 8
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 10
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    const-string v0, "FAILED_TO_CONNECT"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_0
    return-void
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 3

    const-string/jumbo v0, "requestAuthorization"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->requestAuthorization(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_0
    const-string/jumbo v0, "scan"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->findDevices(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_1
    const-string/jumbo v0, "stopScan"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->stopScan(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    :cond_2
    const-string v0, "connect"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->connectDevice(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_3
    const-string v0, "disconnect"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->disconnect(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_4
    const-string v0, "getServices"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->getServices(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_5
    const-string v0, "getCharacteristics"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->getCharacteristics(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_6
    const-string/jumbo v0, "writeValue"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->writeValue(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_7
    const-string/jumbo v0, "readValue"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->readValue(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_8
    const-string/jumbo v0, "startNotifications"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    invoke-virtual {p0, p2, v1, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->setNotifications(Ljava/lang/String;ZLandroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_9
    const-string/jumbo v0, "stopNotifications"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 22
    invoke-virtual {p0, p2, v2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->setNotifications(Ljava/lang/String;ZLandroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_a
    :goto_0
    return v2
.end method

.method public findDevices(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string/jumbo v1, "msg"

    if-nez v0, :cond_0

    const-string v0, "DEVICE_NOT_SUPPORT"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BLUETOOTH_DISABLED"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    if-nez p1, :cond_2

    .line 9
    new-instance p1, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$3;

    invoke-direct {p1, p0}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$3;-><init>(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)V

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 10
    :cond_2
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mKnownDevices:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 11
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 12
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    :goto_0
    return-void
.end method

.method public getCharacteristics(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 5

    const-string v0, ""

    .line 1
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 2
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string/jumbo v3, "msg"

    if-nez v2, :cond_0

    const-string p1, "DEVICE_NOT_SUPPORT"

    .line 3
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "deviceId"

    .line 7
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v4, "serviceId"

    .line 8
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    .line 11
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 13
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "characteristicId"

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    const-string p1, "characteristics"

    .line 14
    invoke-virtual {v1, p1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 15
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, "DEVICE_NOT_CONNECT"

    .line 16
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 20
    :cond_4
    :goto_2
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    return-void
.end method

.method public getServices(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string/jumbo v2, "msg"

    if-nez v1, :cond_0

    const-string p1, "DEVICE_NOT_SUPPORT"

    .line 3
    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "deviceId"

    const-string v3, ""

    .line 7
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "DEVICE_NOT_CONNECT"

    .line 9
    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    .line 13
    :cond_2
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_3

    .line 14
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mGetServiceCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 15
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    const-string p1, "WVBluetooth"

    const-string p2, "Attempting to start service discovery"

    .line 16
    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 17
    :cond_4
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    return-void
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    invoke-super {p0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    return-void
.end method

.method public readValue(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 7

    const-string v0, ""

    .line 1
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 2
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string/jumbo v3, "msg"

    if-nez v2, :cond_0

    const-string p1, "DEVICE_NOT_SUPPORT"

    .line 3
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "BLUETOOTH_DISABLED"

    .line 6
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_2

    .line 8
    :cond_1
    iget v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mCurrentConnectionState:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BLUETOOTH_NOT_ACTIVE: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mCurrentConnectionState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_2

    .line 11
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "deviceId"

    .line 12
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v4, "serviceId"

    .line 13
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "characteristicId"

    .line 14
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "value"

    .line 15
    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    .line 18
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 19
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mReadValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    goto :goto_1

    .line 21
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED_TO_READ_CHARACTERISTIC: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_1

    :cond_5
    :goto_0
    const-string p1, "DEVICE_NOT_CONNECT"

    .line 23
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    :cond_6
    :goto_1
    const-string p1, "FAILED_TO_READ"

    .line 26
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_2
    return-void
.end method

.method public requestAuthorization(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$2;

    invoke-direct {v0, p0, p2}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$2;-><init>(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$1;

    invoke-direct {v0, p0, p2}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$1;-><init>(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setNotifications(Ljava/lang/String;ZLandroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 7

    const-string v0, ""

    .line 1
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 2
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string/jumbo v3, "msg"

    if-nez v2, :cond_0

    const-string p1, "DEVICE_NOT_SUPPORT"

    .line 3
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_3

    .line 5
    :cond_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "BLUETOOTH_DISABLED"

    .line 6
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_3

    .line 8
    :cond_1
    iget v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mCurrentConnectionState:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BLUETOOTH_NOT_ACTIVE: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mCurrentConnectionState:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_3

    .line 11
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "deviceId"

    .line 12
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v4, "serviceId"

    .line 13
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "characteristicId"

    .line 14
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "value"

    .line 15
    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    .line 18
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 19
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    if-eqz p2, :cond_4

    .line 23
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    goto :goto_1

    .line 24
    :cond_4
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 25
    :goto_1
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0

    .line 26
    :cond_5
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto :goto_3

    :cond_6
    const-string p1, "FAILED_TO_SET_NOTIFICATION"

    .line 27
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_3

    :cond_7
    :goto_2
    const-string p1, "DEVICE_NOT_CONNECT"

    .line 29
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_3
    return-void
.end method

.method public stopScan(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string/jumbo v1, "msg"

    if-nez v0, :cond_0

    const-string v0, "DEVICE_NOT_SUPPORT"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BLUETOOTH_DISABLED"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 9
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    :goto_0
    return-void
.end method

.method public writeValue(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 8

    const-string v0, ""

    .line 1
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 2
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string/jumbo v3, "msg"

    if-nez v2, :cond_0

    const-string p1, "DEVICE_NOT_SUPPORT"

    .line 3
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "BLUETOOTH_DISABLED"

    .line 6
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_2

    .line 8
    :cond_1
    iget v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mCurrentConnectionState:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BLUETOOTH_NOT_ACTIVE: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mCurrentConnectionState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_2

    .line 11
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "deviceId"

    .line 12
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v5, "serviceId"

    .line 13
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "characteristicId"

    .line 14
    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "value"

    .line 15
    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    .line 18
    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    const-string v2, "WVBluetooth"

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get characteristic: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 20
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 21
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mWriteValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    goto :goto_0

    .line 23
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED_TO_WRITE_CHARACTERISTIC: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    const-string p1, "DEVICE_NOT_CONNECT"

    .line 25
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    const-string p1, "FAILED_TO_WRITE"

    .line 29
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_2
    return-void
.end method
