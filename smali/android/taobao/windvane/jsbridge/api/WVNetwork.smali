.class public Landroid/taobao/windvane/jsbridge/api/WVNetwork;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "Taobao"


# static fields
.field public static final NETWORK_TYPE_IWLAN:I = 0x12

.field public static final NETWORK_TYPE_LTE_CA:I = 0x13

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11


# instance fields
.field private final NETWORK_TYPE_1xRTT:I

.field private final NETWORK_TYPE_CDMA:I

.field private final NETWORK_TYPE_EDGE:I

.field private final NETWORK_TYPE_EHRPD:I

.field private final NETWORK_TYPE_EVDO_0:I

.field private final NETWORK_TYPE_EVDO_A:I

.field private final NETWORK_TYPE_EVDO_B:I

.field private final NETWORK_TYPE_GPRS:I

.field private final NETWORK_TYPE_GSM:I

.field private final NETWORK_TYPE_HSDPA:I

.field private final NETWORK_TYPE_HSPA:I

.field private final NETWORK_TYPE_HSPAP:I

.field private final NETWORK_TYPE_HSUPA:I

.field private final NETWORK_TYPE_IDEN:I

.field private final NETWORK_TYPE_LTE:I

.field private final NETWORK_TYPE_NR:I

.field private final NETWORK_TYPE_UMTS:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->NETWORK_TYPE_GPRS:I

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->NETWORK_TYPE_EDGE:I

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->NETWORK_TYPE_UMTS:I

    const/4 v0, 0x4

    .line 5
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->NETWORK_TYPE_CDMA:I

    const/4 v0, 0x5

    .line 6
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->NETWORK_TYPE_EVDO_0:I

    const/4 v0, 0x6

    .line 7
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->NETWORK_TYPE_EVDO_A:I

    const/4 v0, 0x7

    .line 8
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->NETWORK_TYPE_1xRTT:I

    const/16 v0, 0x8

    .line 9
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->NETWORK_TYPE_HSDPA:I

    const/16 v0, 0x9

    .line 10
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->NETWORK_TYPE_HSUPA:I

    const/16 v0, 0xa

    .line 11
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->NETWORK_TYPE_HSPA:I

    const/16 v0, 0xb

    .line 12
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->NETWORK_TYPE_IDEN:I

    const/16 v0, 0xc

    .line 13
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->NETWORK_TYPE_EVDO_B:I

    const/16 v0, 0xd

    .line 14
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->NETWORK_TYPE_LTE:I

    const/16 v0, 0xe

    .line 15
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->NETWORK_TYPE_EHRPD:I

    const/16 v0, 0xf

    .line 16
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->NETWORK_TYPE_HSPAP:I

    const/16 v0, 0x10

    .line 17
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->NETWORK_TYPE_GSM:I

    const/16 v0, 0x14

    .line 18
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->NETWORK_TYPE_NR:I

    return-void
.end method

.method private getNetworkInfoBySystem(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Landroid/taobao/windvane/jsbridge/WVResult;)Z
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "msg"

    invoke-virtual {p2, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const-string/jumbo v2, "type"

    if-nez v0, :cond_0

    const-string v0, "NONE"

    .line 5
    invoke-virtual {p2, v2, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const-string v4, "WIFI"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 8
    invoke-virtual {p2, v2, v4}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return v1

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    const-string v0, "4G"

    const-string v1, "2G"

    const-string v3, "3G"

    const-string v6, "message"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 11
    :pswitch_0
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean p1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->open5GAdapter:Z

    if-eqz p1, :cond_2

    const-string p1, "GSM"

    .line 12
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 14
    :cond_2
    :pswitch_1
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean p1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->open5GAdapter:Z

    if-eqz p1, :cond_3

    const-string p1, "TD_SCDMA"

    .line 15
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2, v2, v3}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 17
    :cond_3
    :pswitch_2
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean p1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->open5GAdapter:Z

    if-eqz p1, :cond_4

    const-string p1, "IWLAN"

    .line 18
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2, v2, v4}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 20
    :cond_4
    :pswitch_3
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean p1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->open5GAdapter:Z

    if-eqz p1, :cond_5

    const-string p1, "LTE_CA"

    .line 21
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2, v2, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 23
    :cond_5
    :pswitch_4
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean p1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->open5GAdapter:Z

    if-eqz p1, :cond_6

    const-string p1, "NR"

    .line 24
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "5G"

    .line 25
    invoke-virtual {p2, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_5
    const-string p1, "HSPAP"

    .line 26
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2, v2, v3}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_6
    const-string p1, "EHRPD"

    .line 28
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2, v2, v3}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_7
    const-string p1, "LTE"

    .line 30
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2, v2, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_8
    const-string p1, "EVDO_B"

    .line 32
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2, v2, v3}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_9
    const-string p1, "IDEN"

    .line 34
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_a
    const-string p1, "HSPA"

    .line 36
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2, v2, v3}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_b
    const-string p1, "HSUPA"

    .line 38
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2, v2, v3}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_c
    const-string p1, "HSDPA"

    .line 40
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2, v2, v3}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_d
    const-string p1, "1xRTT"

    .line 42
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_e
    const-string p1, "EVDO_A"

    .line 44
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2, v2, v3}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_f
    const-string p1, "EVDO_0"

    .line 46
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2, v2, v3}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_10
    const-string p1, "CDMA"

    .line 48
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_11
    const-string p1, "UMTS"

    .line 50
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2, v2, v3}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_12
    const-string p1, "EDGE"

    .line 52
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_13
    const-string p1, "GPRS"

    .line 54
    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_1
    const-string p1, "UNKNOWN"

    .line 56
    invoke-virtual {p2, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1

    const-string v0, "getNetworkType"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->getNetworkType(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getNetworkType(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 10

    const-string v0, "\""

    const-string/jumbo v1, "wifiList"

    .line 1
    new-instance v2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const/4 v3, 0x0

    .line 2
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "wifiStatus"

    .line 3
    invoke-virtual {v4, p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :catch_1
    const/4 v4, 0x0

    :goto_0
    const-string v5, "bssid"

    const-string/jumbo v6, "ssid"

    const-string/jumbo v7, "wifi"

    if-eqz p1, :cond_1

    .line 5
    :try_start_2
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 6
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    .line 10
    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 11
    :cond_0
    invoke-virtual {v2, v6, v8}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v5, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :cond_1
    :goto_1
    if-eqz v4, :cond_3

    .line 13
    :try_start_3
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 14
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 15
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    .line 17
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 18
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 19
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget-object v7, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget-object v7, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {v2, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    nop

    .line 23
    :cond_3
    :goto_3
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean p1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->open5GAdapter:Z

    if-eqz p1, :cond_5

    .line 24
    :try_start_4
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->k()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object p1

    .line 25
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Ljava/lang/String;

    move-result-object v0

    .line 26
    sget-object v1, Landroid/taobao/windvane/jsbridge/api/WVNetwork$1;->$SwitchMap$anet$channel$status$NetworkStatusHelper$NetworkStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string/jumbo v1, "type"

    packed-switch p1, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    :try_start_5
    const-string p1, "5G"

    .line 27
    invoke-virtual {v2, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_1
    const-string p1, "WIFI"

    .line 28
    invoke-virtual {v2, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_2
    const-string p1, "4G"

    .line 29
    invoke-virtual {v2, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_3
    const-string p1, "3G"

    .line 30
    invoke-virtual {v2, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_4
    const-string p1, "2G"

    .line 31
    invoke-virtual {v2, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_5
    const-string p1, "NO"

    .line 32
    invoke-virtual {v2, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_6
    const-string p1, "NONE"

    .line 33
    invoke-virtual {v2, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    const-string p1, "UNKNOWN"

    .line 34
    invoke-virtual {v2, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const-string p1, "message"

    .line 35
    invoke-virtual {v2, p1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    .line 36
    invoke-direct {p0, p2, v2}, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->getNetworkInfoBySystem(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Landroid/taobao/windvane/jsbridge/WVResult;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 37
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v2, v0, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 39
    :cond_5
    invoke-direct {p0, p2, v2}, Landroid/taobao/windvane/jsbridge/api/WVNetwork;->getNetworkInfoBySystem(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Landroid/taobao/windvane/jsbridge/WVResult;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 40
    :cond_6
    :goto_6
    invoke-virtual {p2, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public lookUpScan(Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Integer;

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method
