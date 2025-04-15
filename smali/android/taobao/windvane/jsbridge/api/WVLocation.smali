.class public Landroid/taobao/windvane/jsbridge/api/WVLocation;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "Taobao"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final GPS_TIMEOUT:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "WVLocation"


# instance fields
.field private MIN_DISTANCE:I

.field private MIN_TIME:I

.field private enableAddress:Z

.field private getLocationSuccess:Z

.field private locationManager:Landroid/location/LocationManager;

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/taobao/windvane/jsbridge/WVCallBackContext;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    const/16 v0, 0x4e20

    .line 2
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->MIN_TIME:I

    const/16 v0, 0x1e

    .line 3
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->MIN_DISTANCE:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->mCallbacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->getLocationSuccess:Z

    .line 7
    iput-boolean v1, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->enableAddress:Z

    .line 8
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->locationManager:Landroid/location/LocationManager;

    .line 9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/jsbridge/api/WVLocation;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/jsbridge/api/WVLocation;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->enableAddress:Z

    return p0
.end method

.method static synthetic access$200(Landroid/taobao/windvane/jsbridge/api/WVLocation;DD)Landroid/location/Address;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/taobao/windvane/jsbridge/api/WVLocation;->getAddress(DD)Landroid/location/Address;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/taobao/windvane/jsbridge/api/WVLocation;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getAddress(DD)Landroid/location/Address;
    .locals 6

    .line 1
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    .line 2
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getAddress: getFromLocation error. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVLocation"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private registerLocation(Z)V
    .locals 12

    const-string p1, "WVLocation"

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->locationManager:Landroid/location/LocationManager;

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->getLocationSuccess:Z

    .line 4
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "network"

    iget v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->MIN_TIME:I

    int-to-long v3, v0

    iget v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->MIN_DISTANCE:I

    int-to-float v5, v0

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/alibaba/wireless/security/aopsdk/replace/android/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 5
    iget-object v6, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->locationManager:Landroid/location/LocationManager;

    const-string v7, "gps"

    iget v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->MIN_TIME:I

    int-to-long v8, v0

    iget v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->MIN_DISTANCE:I

    int-to-float v10, v0

    move-object v11, p0

    invoke-static/range {v6 .. v11}, Lcom/alibaba/wireless/security/aopsdk/replace/android/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 6
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " registerLocation start provider GPS and NETWORK"

    .line 7
    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerLocation error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private wrapResult(Landroid/location/Location;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->mCallbacks:Ljava/util/ArrayList;

    const-string v1, "WVLocation"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    const-string p1, "getLocation: location is null"

    .line 2
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 4
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 6
    :cond_2
    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVLocation$4;

    invoke-direct {v0, p0, p1}, Landroid/taobao/windvane/jsbridge/api/WVLocation$4;-><init>(Landroid/taobao/windvane/jsbridge/api/WVLocation;Landroid/location/Location;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "GetLocation wrapResult callbackContext is null"

    .line 7
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1

    const-string v0, "getLocation"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVLocation;->getLocation(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized getLocation(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object v0

    new-instance v1, Landroid/taobao/windvane/jsbridge/api/WVLocation$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/taobao/windvane/jsbridge/api/WVLocation$2;-><init>(Landroid/taobao/windvane/jsbridge/api/WVLocation;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p2

    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVLocation$1;

    invoke-direct {v0, p0, p1}, Landroid/taobao/windvane/jsbridge/api/WVLocation$1;-><init>(Landroid/taobao/windvane/jsbridge/api/WVLocation;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 3
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 5
    :catch_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const-string v0, "WVLocation"

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->locationManager:Landroid/location/LocationManager;

    if-eqz p1, :cond_5

    .line 3
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 4
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->mCallbacks:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->getLocationSuccess:Z

    if-nez p1, :cond_5

    .line 6
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 7
    new-instance v3, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v3}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    invoke-virtual {v2, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    :cond_3
    :goto_1
    const-string p1, "GetLocation wrapResult callbackContext is null"

    .line 9
    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetLocation timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 12
    new-instance v2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    invoke-virtual {v0, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_3

    .line 13
    :cond_4
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_5
    :goto_4
    return v1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->getLocationSuccess:Z

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->locationManager:Landroid/location/LocationManager;

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WVLocation"

    const-string v1, " onLocationChanged. "

    .line 2
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Landroid/taobao/windvane/jsbridge/api/WVLocation;->wrapResult(Landroid/location/Location;)V

    .line 5
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->getLocationSuccess:Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onProviderDisabled. provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WVLocation"

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onProviderEnabled. provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WVLocation"

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onStatusChanged. provider: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";status: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVLocation"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestLocation(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "enableHighAcuracy"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "address"

    .line 4
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->enableAddress:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLocation: param parse to JSON error, param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WVLocation"

    invoke-static {v0, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v0, "HY_PARAM_ERR"

    .line 7
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->mCallbacks:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->mCallbacks:Ljava/util/ArrayList;

    .line 11
    :cond_1
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVLocation;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-direct {p0, v1}, Landroid/taobao/windvane/jsbridge/api/WVLocation;->registerLocation(Z)V

    .line 13
    invoke-static {}, Landroid/taobao/windvane/thread/WVThreadPool;->getInstance()Landroid/taobao/windvane/thread/WVThreadPool;

    move-result-object p1

    new-instance p2, Landroid/taobao/windvane/jsbridge/api/WVLocation$3;

    invoke-direct {p2, p0}, Landroid/taobao/windvane/jsbridge/api/WVLocation$3;-><init>(Landroid/taobao/windvane/jsbridge/api/WVLocation;)V

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/thread/WVThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
