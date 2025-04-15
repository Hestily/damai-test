.class public Landroid/taobao/windvane/monitor/AppMonitorUtil;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final JS_ERROR_POINT:Ljava/lang/String; = "JavaScriptError"

.field public static final MONITOR_MATCH_URL_FAILED:Ljava/lang/String; = "urlMatchFailed"

.field private static final MONITOR_MODULE:Ljava/lang/String; = "WindVane"

.field private static final MONITOR_MODULE_ZCache:Ljava/lang/String; = "ZCache"

.field public static final MONITOR_POINT_CORE_INIT_TIME:Ljava/lang/String; = "CoreInitTime"

.field public static final MONITOR_POINT_CORE_TYPE_BY_PV:Ljava/lang/String; = "CoreTypeByPV"

.field public static final MONITOR_POINT_DIURNAL_OVERVIEW:Ljava/lang/String; = "DiurnalOverview"

.field public static final MONITOR_POINT_FSP_TIME:Ljava/lang/String; = "FSP"

.field public static final MONITOR_POINT_GPU_PROCESS_GONE_TYPE:Ljava/lang/String; = "GpuProcessGone"

.field private static final MONITOR_POINT_INSECURITY_HOST:Ljava/lang/String; = "insecurityHost"

.field private static final MONITOR_POINT_JS_BRIDGE_RETURN:Ljava/lang/String; = "JSBridgeReturn"

.field public static final MONITOR_POINT_MULTI_PROCESS:Ljava/lang/String; = "MultiProcess"

.field public static final MONITOR_POINT_MULTI_PROCESS_BY_PV:Ljava/lang/String; = "MultiProcessByPV"

.field private static final MONITOR_POINT_OFF_MONITOR:Ljava/lang/String; = "OffMonitor"

.field private static final MONITOR_POINT_PACKAGEAPP:Ljava/lang/String; = "PackageApp"

.field private static final MONITOR_POINT_PACKAGEAPP_UPDATE_START:Ljava/lang/String; = "PackageUpdateStart"

.field private static final MONITOR_POINT_PACKAGEAPP_VISIT:Ljava/lang/String; = "PackageAppVisit"

.field private static final MONITOR_POINT_PACKAGEAPP_VISIT_START:Ljava/lang/String; = "PackageVisitStart"

.field private static final MONITOR_POINT_PACKAGEQUEUE:Ljava/lang/String; = "PackageQueue"

.field private static final MONITOR_POINT_PACKAGE_CLEANUP:Ljava/lang/String; = "PackageCleanUp"

.field private static final MONITOR_POINT_PACKAGE_WARNING:Ljava/lang/String; = "PackageWarning"

.field private static final MONITOR_POINT_PAGE_EMPTY:Ljava/lang/String; = "PageEmpty"

.field public static final MONITOR_POINT_PARAM_PARSE_ERROR:Ljava/lang/String; = "ParamParseError"

.field private static final MONITOR_POINT_PERFORMANCE:Ljava/lang/String; = "H5"

.field private static final MONITOR_POINT_PERFORMANCE_2:Ljava/lang/String; = "H5_2"

.field private static final MONITOR_POINT_PERFORMANCE_3:Ljava/lang/String; = "H5_3"

.field private static final MONITOR_POINT_PERFORMANCE_4:Ljava/lang/String; = "H5_4"

.field private static final MONITOR_POINT_PERFORMANCE_5:Ljava/lang/String; = "H5_5"

.field private static final MONITOR_POINT_RESOURCE_SIZE:Ljava/lang/String; = "ResourceSize"

.field private static final MONITOR_POINT_SECURITY_WARNING:Ljava/lang/String; = "SecurityWarning"

.field private static final MONITOR_POINT_STATUS_CODE:Ljava/lang/String; = "StatusCode"

.field private static final MONITOR_POINT_UNZIP_ERROR:Ljava/lang/String; = "UnzipError"

.field private static final MONITOR_POINT_UPDATE_CONFIG_INFO:Ljava/lang/String; = "Config"

.field public static final MONITOR_POINT_URL_CONFIG_FILTER_TYPE:Ljava/lang/String; = "UrlConfigFilterType"

.field public static final MONITOR_POINT_URL_CONFIG_JS_API_TYPE:Ljava/lang/String; = "UrlConfigJsApiType"

.field private static final MONITOR_POINT_USE_WEBGL:Ljava/lang/String; = "UseWebGl"

.field private static final MONITOR_POINT_WEBVIEW_START:Ljava/lang/String; = "WebViewStart"

.field public static final MONITOR_POINT_WEBVIEW_WRAP_TYPE:Ljava/lang/String; = "WebViewWrapType"

.field public static final MONITOR_POINT_WEB_CORE_TYPE:Ljava/lang/String; = "WebViewCoreType"

.field public static final MONITOR_POINT_WEB_CORE_TYPE_BY_PV:Ljava/lang/String; = "WebViewCoreTypeByPV"

.field private static final MONITOR_POINT_WEB_PERFORMANCE_CHECK:Ljava/lang/String; = "WebPerformanceCheck"

.field private static final MONITOR_POINT_WRONG_FOLDER_INDEX:Ljava/lang/String; = "WrongFolderIndex"

.field private static final MONITOR_POINT_WVUCWEBVIEW:Ljava/lang/String; = "WVUcwebview"

.field public static final MONITOR_POINT_WV_INIT_TIME:Ljava/lang/String; = "WVInitTime"

.field public static final MONITOR_POINT_ZCACHE_DOWNLOAD_TIME:Ljava/lang/String; = "ZCacheDownLoadTime"

.field public static final MONITOR_POINT_ZCACHE_RESPONSE_TIME_OUT:Ljava/lang/String; = "ZcacheResponseTime"

.field public static final NATIVE_ERROR_POINT:Ljava/lang/String; = "NativeError"

.field public static OFF:Z = false

.field private static final TAG:Ljava/lang/String; = "AppMonitorUtil"

.field private static isAppMonitorEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitConifgUpdateError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindVane"

    const-string v1, "Config"

    invoke-static {v0, v1, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitConifgUpdateInfo(Ljava/lang/String;IJII)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string/jumbo v1, "name"

    .line 3
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "from"

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "isSuccess"

    .line 5
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 6
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p0

    const-string/jumbo p1, "updateTime"

    long-to-double p2, p2

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p1, "updateCount"

    int-to-double p2, p5

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p1, "WindVane"

    const-string p2, "Config"

    .line 9
    invoke-static {p1, p2, v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor exception"

    .line 10
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitConifgUpdateSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "Config"

    .line 2
    invoke-static {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitCoreInitTime(JLjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string v1, "fromType"

    .line 3
    invoke-virtual {v0, v1, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 4
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p2

    const-string v1, "initTime"

    long-to-double p0, p0

    .line 5
    invoke-virtual {p2, v1, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p0, "WindVane"

    const-string p1, "CoreInitTime"

    .line 6
    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitCoreInitTime exception"

    .line 7
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitCoreTypeByPV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string v1, "fromType"

    .line 3
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "coreType"

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "WindVane"

    const-string p1, "CoreTypeByPV"

    .line 5
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitCoreTypeByPV exception"

    .line 6
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitEmptyPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Webview commitEmptyPage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppMonitorUtil"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WindVane"

    const-string v1, "PageEmpty"

    const-string v2, "101"

    .line 3
    invoke-static {v0, v1, p0, v2, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitFSPInfo(Ljava/lang/String;J)V
    .locals 3

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string v1, "URL"

    .line 2
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 3
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p0

    const-string/jumbo v1, "time"

    long-to-double p1, p1

    .line 4
    invoke-virtual {p0, v1, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p1, "WindVane"

    const-string p2, "FSP"

    .line 5
    invoke-static {p1, p2, v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor paramParseError exception"

    .line 6
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindVane"

    invoke-static {v0, p0, p3, p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitInSecurityHost(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "insecurityHost"

    const-string v2, "101"

    .line 2
    invoke-static {v0, v1, v2, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitJsBridgeReturn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string/jumbo v1, "name"

    .line 3
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "ret"

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "message"

    .line 5
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "url"

    .line 6
    invoke-virtual {v0, p0, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "WindVane"

    const-string p1, "JSBridgeReturn"

    .line 7
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitJsBridgeReturn exception"

    .line 8
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitOffMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "OffMonitor"

    .line 2
    invoke-static {v0, v1, p1, p2, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageAppUpdateError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "PackageApp"

    .line 2
    invoke-static {v0, v1, p2, p0, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageAppUpdateInfo(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Ljava/lang/String;JJJJ)V
    .locals 5

    const-string v0, "AppMonitorUtil"

    .line 1
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    const-string v2, "appName"

    .line 3
    iget-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo v2, "version"

    .line 4
    iget-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo v2, "seq"

    .line 5
    iget-wide v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "online"

    .line 6
    invoke-virtual {v1, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "networkSupport"

    .line 7
    invoke-virtual {v1, p0, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 8
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p0

    const-string/jumbo p2, "updateTime"

    long-to-double p3, p3

    .line 9
    invoke-virtual {p0, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p2, "downloadTime"

    long-to-double p3, p5

    .line 10
    invoke-virtual {p0, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p2, "publishTime"

    long-to-double p3, p7

    .line 11
    invoke-virtual {p0, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p2, "notificationTime"

    long-to-double p3, p9

    .line 12
    invoke-virtual {p0, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p2, "WindVane"

    const-string p3, "PackageApp"

    .line 13
    invoke-static {p2, p3, v1, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "app publishTime : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " online : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitor exception"

    .line 15
    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageAppUpdateSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "PackageApp"

    .line 2
    invoke-static {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageAppVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "PackageAppVisit"

    .line 2
    invoke-static {v0, v1, p0, p2, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageAppWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "PackageWarning"

    const-string v2, "1"

    .line 2
    invoke-static {v0, v1, p0, v2, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageClearUpInfo(JIIIFIIFI)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string v1, "cleanCause"

    .line 3
    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p9

    invoke-virtual {v0, v1, p9}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 4
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p9

    const-string v1, "beforeDelSpace"

    long-to-double p0, p0

    .line 5
    invoke-virtual {p9, v1, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p0, "expectedNum"

    int-to-double p1, p2

    .line 6
    invoke-virtual {p9, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p0, "installedNum"

    int-to-double p1, p3

    .line 7
    invoke-virtual {p9, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p0, "willDeleteCount"

    int-to-double p1, p4

    .line 8
    invoke-virtual {p9, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p0, "customRadio"

    float-to-double p1, p5

    .line 9
    invoke-virtual {p9, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p0, "noCacheCount"

    int-to-double p1, p6

    .line 10
    invoke-virtual {p9, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p0, "normalCount"

    int-to-double p1, p7

    .line 11
    invoke-virtual {p9, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p0, "noCacheRatio"

    float-to-double p1, p8

    .line 12
    invoke-virtual {p9, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p0, "WindVane"

    const-string p1, "PackageCleanUp"

    .line 13
    invoke-static {p0, p1, v0, p9}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitPackageClearUpInfo exception"

    .line 14
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageQueueInfo(Ljava/lang/String;JJ)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "isInitialUpdate"

    .line 4
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 5
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p0

    const-string/jumbo v1, "updateCount"

    long-to-double p1, p1

    .line 6
    invoke-virtual {p0, v1, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p1, "successCount"

    long-to-double p2, p3

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p1, "WindVane"

    const-string p2, "PackageQueue"

    .line 8
    invoke-static {p1, p2, v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitPackageQueueInfo exception"

    .line 9
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static commitPackageUpdateStartInfo(JJ)V
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    const-string/jumbo v2, "t_startTime"

    long-to-double p0, p0

    .line 4
    invoke-virtual {v1, v2, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p0, "t_endTime"

    long-to-double p1, p2

    .line 5
    invoke-virtual {v1, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p0, "WindVane"

    const-string p1, "PackageUpdateStart"

    .line 6
    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitPackageUpdateStartInfo exception"

    .line 7
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageVisitInfo(Ljava/lang/String;Ljava/lang/String;JJJJJ)V
    .locals 0

    .line 1
    sget-object p10, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget p10, p10, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz p10, :cond_1

    sget-boolean p10, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez p10, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object p10

    const-string/jumbo p11, "pkgName"

    .line 3
    invoke-virtual {p10, p11, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "hasVerifyTime"

    .line 4
    invoke-virtual {p10, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 5
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p0

    const-string/jumbo p1, "time"

    long-to-double p2, p2

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p1, "matchTime"

    long-to-double p2, p4

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p1, "readTime"

    long-to-double p2, p6

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p1, "verifyTime"

    long-to-double p2, p8

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p1, "WindVane"

    const-string p2, "PackageAppVisit"

    .line 10
    invoke-static {p1, p2, p10, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitPackageVisitInfo exception"

    .line 11
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageVisitStartInfo(Ljava/lang/String;J)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string/jumbo v1, "pkgName"

    .line 3
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 4
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p0

    const-string/jumbo v1, "time"

    long-to-double p1, p1

    .line 5
    invoke-virtual {p0, v1, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p1, "WindVane"

    const-string p2, "PackageVisitStart"

    .line 6
    invoke-static {p1, p2, v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitPackageVisitStartInfo exception"

    .line 7
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageVisitSuccess(Ljava/lang/String;J)V
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "WindVane"

    const-string v1, "PackageAppVisit"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitPackageVisitSuccess exception"

    .line 3
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitParamParseError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string/jumbo v1, "pageUrl"

    .line 3
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "crashInfo"

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "params"

    .line 5
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "invokeMethod"

    .line 6
    invoke-virtual {v0, p0, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "WindVane"

    const-string p1, "ParamParseError"

    .line 7
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor paramParseError exception"

    .line 8
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPerformanceInfo(Landroid/taobao/windvane/monitor/WVMonitorData;)V
    .locals 20

    move-object/from16 v0, p0

    const-string/jumbo v1, "scs"

    const-string/jumbo v2, "rps"

    const-string/jumbo v3, "rpe"

    const-string/jumbo v4, "req"

    const-string v5, "les"

    const-string v6, "lee"

    const-string v7, "dns"

    const-string v8, "dl"

    const-string v9, "dcl"

    const-string v10, "dc"

    const-string v11, "\""

    const-string v12, "c"

    const-string v13, "AppMonitorUtil"

    .line 1
    sget-object v14, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v14, v14, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v14, :cond_b

    sget-boolean v14, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v14, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v14

    const-string/jumbo v15, "url"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v16, v13

    .line 3
    :try_start_1
    iget-object v13, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->url:Ljava/lang/String;

    invoke-virtual {v14, v15, v13}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo v13, "via"

    .line 4
    iget-object v15, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    iget-object v15, v15, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->via:Ljava/lang/String;

    invoke-virtual {v14, v13, v15}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo v13, "pkgName"

    .line 5
    iget-object v15, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-object v15, v15, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->packageAppName:Ljava/lang/String;

    invoke-virtual {v14, v13, v15}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo v13, "pkgVersion"

    .line 6
    iget-object v15, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-object v15, v15, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->packageAppVersion:Ljava/lang/String;

    invoke-virtual {v14, v13, v15}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo v13, "pkgSeq"

    .line 7
    iget-object v15, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-object v15, v15, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->appSeq:Ljava/lang/String;

    invoke-virtual {v14, v13, v15}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v13, "fromType"

    .line 8
    iget-object v15, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget v15, v15, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->fromType:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v13, "hasInit"

    .line 9
    iget-boolean v15, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->isInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v17, "1"

    const-string v18, "0"

    if-eqz v15, :cond_1

    move-object/from16 v15, v17

    goto :goto_0

    :cond_1
    move-object/from16 v15, v18

    :goto_0
    :try_start_2
    invoke-virtual {v14, v13, v15}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v13, "isFinished"

    .line 10
    iget-object v15, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget v15, v15, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->finish:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo v13, "statusCode"

    .line 11
    iget-object v15, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    iget v15, v15, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->statusCode:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo v13, "verifyError"

    .line 12
    iget-object v15, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget v15, v15, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyError:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo v13, "protocolType"

    .line 13
    iget-object v15, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->protocolType:Ljava/lang/String;

    invoke-virtual {v14, v13, v15}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v13, "inMainProcess"

    .line 14
    sget-object v15, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v15}, Landroid/taobao/windvane/util/CommonUtils;->isMainProcess(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v15, v17

    goto :goto_1

    :cond_2
    move-object/from16 v15, v18

    :goto_1
    invoke-virtual {v14, v13, v15}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 15
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v13

    const-string/jumbo v15, "verifyResTime"

    move-object/from16 v17, v14

    .line 16
    iget-object v14, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    iget-wide v1, v14, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyResTime:J

    long-to-double v1, v1

    invoke-virtual {v13, v15, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo v1, "verifyTime"

    .line 17
    iget-object v2, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v14, v2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyTime:J

    long-to-double v14, v14

    invoke-virtual {v13, v1, v14, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo v1, "verifyCacheSize"

    .line 18
    iget-object v2, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget v2, v2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyCacheSize:I

    int-to-double v14, v2

    invoke-virtual {v13, v1, v14, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string v1, "allVerifyTime"

    .line 19
    iget-object v2, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v14, v2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->allVerifyTime:J

    long-to-double v14, v14

    invoke-virtual {v13, v1, v14, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string v1, "initTime"

    .line 20
    iget-wide v14, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->init:J

    long-to-double v14, v14

    invoke-virtual {v13, v1, v14, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo v1, "tcp"

    const-wide/16 v14, 0x0

    .line 21
    invoke-virtual {v13, v1, v14, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo v1, "ssl"

    .line 22
    invoke-virtual {v13, v1, v14, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string v1, "firstByte"

    .line 23
    iget-object v2, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v14, v2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->firstByteTime:J

    long-to-double v14, v14

    invoke-virtual {v13, v1, v14, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string v1, "domLoad"

    .line 24
    iget-object v2, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v14, v2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onDomLoad:J

    long-to-double v14, v14

    invoke-virtual {v13, v1, v14, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo v1, "pageLoad"

    .line 25
    iget-object v2, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v14, v2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onLoad:J

    long-to-double v14, v14

    invoke-virtual {v13, v1, v14, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, 0x1

    .line 26
    :try_start_3
    iget-object v14, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->performanceInfo:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 27
    iget-object v14, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->performanceInfo:Ljava/lang/String;

    .line 28
    invoke-virtual {v14, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v14, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 29
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v11

    .line 30
    iget-object v14, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->performanceInfo:Ljava/lang/String;

    sub-int/2addr v11, v2

    invoke-virtual {v14, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 31
    :cond_3
    new-instance v11, Lorg/json/JSONObject;

    const-string v15, "\\"

    const-string v1, ""

    invoke-virtual {v14, v15, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v11

    goto :goto_2

    :catch_0
    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    const/4 v11, 0x0

    .line 32
    :try_start_4
    invoke-virtual {v1, v12, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    int-to-double v14, v14

    invoke-virtual {v13, v12, v14, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 33
    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    int-to-double v14, v12

    invoke-virtual {v13, v10, v14, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 34
    invoke-virtual {v1, v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    int-to-double v14, v10

    invoke-virtual {v13, v9, v14, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 35
    invoke-virtual {v1, v8, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v13, v8, v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 36
    invoke-virtual {v1, v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v13, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 37
    invoke-virtual {v1, v6, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v13, v6, v7, v8}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 38
    invoke-virtual {v1, v5, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v13, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 39
    invoke-virtual {v1, v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v13, v4, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 40
    invoke-virtual {v1, v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v13, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-object/from16 v3, v19

    .line 41
    invoke-virtual {v1, v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v13, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-object/from16 v3, v18

    .line 42
    invoke-virtual {v1, v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v13, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 43
    :cond_5
    iget v1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->wvAppMonitor:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v3, "H5"

    if-eq v1, v2, :cond_a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    const/4 v2, 0x5

    if-eq v1, v2, :cond_6

    goto :goto_3

    :cond_6
    :try_start_5
    const-string v3, "H5_5"

    goto :goto_3

    :cond_7
    const-string v3, "H5_4"

    goto :goto_3

    :cond_8
    const-string v3, "H5_3"

    goto :goto_3

    :cond_9
    const-string v3, "H5_2"

    :cond_a
    :goto_3
    const-string v1, "WindVane"

    move-object/from16 v2, v17

    .line 44
    invoke-static {v1, v3, v2, v13}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 45
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    if-eqz v1, :cond_b

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PERFORMANCE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": pageLoad : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v2, v2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onLoad:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " fromType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget v0, v0, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->fromType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v1, v16

    :try_start_6
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_1
    move-object/from16 v1, v16

    goto :goto_4

    :catch_2
    move-object v1, v13

    :catch_3
    :goto_4
    const-string v0, "AppMonitor exception"

    .line 47
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public static commitRenderType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 3
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "r_type"

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "process_mode"

    .line 5
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "background"

    .line 6
    invoke-virtual {v0, p0, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "WindVane"

    const-string p1, "MultiProcess"

    .line 7
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static commitRenderTypeByPV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string/jumbo v1, "web_init_mode"

    .line 3
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "web_succ_mode"

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "web_succ_reason"

    .line 5
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "gpu_init_mode"

    .line 6
    invoke-virtual {v0, p0, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "gpu_succ_mode"

    .line 7
    invoke-virtual {v0, p0, p4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "gpu_succ_reason"

    .line 8
    invoke-virtual {v0, p0, p5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "WindVane"

    const-string p1, "MultiProcessByPV"

    .line 9
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static commitResourceSize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "ResourceSize"

    const-string v2, "1"

    .line 2
    invoke-static {v0, v1, p0, v2, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitSecurityWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "SecurityWarning"

    const-string v2, "101"

    .line 2
    invoke-static {v0, v1, p1, v2, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitStartTimeInfo(Ljava/lang/String;J)V
    .locals 6

    const-string v0, "AppMonitorUtil"

    .line 1
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v1, :cond_2

    sget-boolean v1, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "url"

    .line 4
    invoke-static {p0}, Landroid/taobao/windvane/util/WVUrlUtil;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 5
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    const-string/jumbo v3, "time"

    long-to-double v4, p1

    .line 6
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Webview start after : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms, url : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/taobao/windvane/util/WVUrlUtil;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "WindVane"

    const-string p1, "WebViewStart"

    .line 8
    invoke-static {p0, p1, v1, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitor commitStartTimeInfo exception"

    .line 9
    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static commitStatusCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 3
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "isHTML"

    .line 4
    invoke-virtual {v0, p0, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "statusCode"

    .line 5
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "referrer"

    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "bizCode"

    .line 7
    invoke-virtual {v0, p0, p4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "WindVane"

    const-string p1, "StatusCode"

    .line 8
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p2

    .line 9
    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitStatusCode exception"

    .line 10
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitUCWebviewError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "WVUcwebview"

    .line 2
    invoke-static {v0, v1, p2, p0, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitUseWebgl(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 3
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "url"

    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "WindVane"

    const-string v1, "UseWebGl"

    .line 6
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static commitWVInitTime(JJ)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    const-string/jumbo v1, "tbInitTime"

    long-to-double p2, p2

    .line 3
    invoke-virtual {v0, v1, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p2, "wvInitTime"

    long-to-double p0, p0

    .line 4
    invoke-virtual {v0, p2, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p0, "WindVane"

    const-string p1, "WVInitTime"

    .line 5
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object p2

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitWVInitTime exception"

    .line 6
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitWVWrapType(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string/jumbo v1, "type"

    .line 3
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "WindVane"

    const-string v1, "WebViewWrapType"

    .line 4
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "AppMonitorUtil"

    const-string v0, "AppMonitor commitWVWrapType exception"

    .line 5
    invoke-static {p0, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitWebPerfCheckInfo(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 3
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "version"

    .line 4
    invoke-virtual {v0, p0, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "bizcode"

    .line 5
    invoke-virtual {v0, p0, p4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "result"

    .line 6
    invoke-virtual {v0, p0, p5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 7
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p0

    const-string/jumbo p3, "score"

    long-to-double p1, p1

    .line 8
    invoke-virtual {p0, p3, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p1, "WindVane"

    const-string p2, "WebPerformanceCheck"

    .line 9
    invoke-static {p1, p2, v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitPackageUpdateStartInfo exception"

    .line 10
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitZCacheDiurnalOverview(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string v1, "installedApps"

    .line 3
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "ZCache"

    const-string v1, "DiurnalOverview"

    .line 4
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "AppMonitorUtil"

    const-string v0, "AppMonitor commitZCacheDiurnalOverview exception"

    .line 5
    invoke-static {p0, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitZCacheDownLoadTime(Ljava/lang/String;JJJLjava/lang/String;Z)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    const-string/jumbo v1, "zcacheDownLoadTime"

    long-to-double p3, p3

    .line 3
    invoke-virtual {v0, v1, p3, p4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p3, "zcacheTaskTime"

    long-to-double p4, p5

    .line 4
    invoke-virtual {v0, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p3, "waitTime"

    long-to-double p1, p1

    .line 5
    invoke-virtual {v0, p3, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 6
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object p1

    const-string p2, "appName"

    .line 7
    invoke-virtual {p1, p2, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "msg"

    .line 8
    invoke-virtual {p1, p0, p7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "isSuccess"

    if-eqz p8, :cond_1

    const-string/jumbo p2, "true"

    goto :goto_0

    :cond_1
    const-string p2, "false"

    .line 9
    :goto_0
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "ZCache"

    const-string p2, "ZCacheDownLoadTime"

    .line 10
    invoke-static {p0, p2, p1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitZCacheDownLoadTime exception"

    .line 11
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    return-object v0
.end method

.method public static init()V
    .locals 22

    const-string v0, "ZCache"

    const-string/jumbo v1, "msg"

    const-string v2, "appName"

    const-string/jumbo v3, "statusCode"

    const-string/jumbo v4, "updateTime"

    const-string v5, "isSuccess"

    const-string/jumbo v6, "name"

    const-string/jumbo v7, "version"

    const-string/jumbo v8, "verifyTime"

    const-string/jumbo v9, "updateCount"

    const-string v10, "fromType"

    const-string/jumbo v11, "time"

    const-string/jumbo v12, "pkgName"

    const-string/jumbo v13, "url"

    const-string v14, "WindVane"

    const/4 v15, 0x0

    .line 1
    :try_start_0
    sput-boolean v15, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    .line 2
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v15

    move-object/from16 v16, v10

    const-string v10, "isInitialUpdate"

    .line 3
    invoke-virtual {v15, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 4
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v10

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    const-wide v0, 0x408c200000000000L    # 900.0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    const-wide v2, 0x3fb999999999999aL    # 0.1

    move-object/from16 v21, v4

    .line 5
    invoke-static {v9, v2, v3, v0, v1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v4, "successCount"

    .line 6
    invoke-static {v4, v2, v3, v0, v1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v0, "PackageQueue"

    .line 7
    invoke-static {v14, v0, v10, v15}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 8
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v12}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "hasVerifyTime"

    .line 10
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 11
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    move-object v4, v9

    const-wide/16 v9, 0x0

    .line 12
    invoke-static {v11, v9, v10, v2, v3}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v15, "matchTime"

    .line 13
    invoke-static {v15, v9, v10, v2, v3}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v15, "readTime"

    .line 14
    invoke-static {v15, v9, v10, v2, v3}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 15
    invoke-static {v8, v9, v10, v2, v3}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v15, "PackageAppVisit"

    .line 16
    invoke-static {v14, v15, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 17
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v13}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 19
    invoke-virtual {v0, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "bizcode"

    .line 20
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v1, "result"

    .line 21
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 22
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    const-string/jumbo v15, "score"

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 23
    invoke-static {v15, v9, v10, v2, v3}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "WebPerformanceCheck"

    .line 24
    invoke-static {v14, v2, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 25
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v12}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 27
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    const-wide v2, 0x4184997000000000L    # 4.32E7

    .line 28
    invoke-static {v11, v9, v10, v2, v3}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v15, "PackageVisitStart"

    .line 29
    invoke-static {v14, v15, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 30
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    const-string/jumbo v15, "t_startTime"

    .line 32
    invoke-static {v15, v9, v10, v2, v3}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v15, "t_endTime"

    .line 33
    invoke-static {v15, v9, v10, v2, v3}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "PackageUpdateStart"

    .line 34
    invoke-static {v14, v2, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 35
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    const-string v1, "cleanCause"

    .line 36
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 37
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    const-string v2, "beforeDelSpace"

    .line 38
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "expectedNum"

    .line 39
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "installedNum"

    .line 40
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "willDeleteCount"

    .line 41
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "customRadio"

    .line 42
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "noCacheCount"

    .line 43
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "normalCount"

    .line 44
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "noCacheRatio"

    .line 45
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "PackageCleanUp"

    .line 46
    invoke-static {v14, v2, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 47
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v13}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 49
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    const-wide v2, 0x413b774000000000L    # 1800000.0

    .line 50
    invoke-static {v11, v9, v10, v2, v3}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "WebViewStart"

    .line 51
    invoke-static {v14, v2, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 52
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "from"

    .line 54
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 55
    invoke-virtual {v0, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 56
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    const-wide v2, 0x41224f8000000000L    # 600000.0

    move-object/from16 v11, v21

    .line 57
    invoke-static {v11, v9, v10, v2, v3}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 58
    invoke-static {v4, v9, v10, v2, v3}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "Config"

    .line 59
    invoke-static {v14, v2, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 60
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v13}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "isHTML"

    .line 62
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-object/from16 v1, v20

    .line 63
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v2, "referrer"

    .line 64
    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v2, "bizCode"

    .line 65
    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 66
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    const-string v3, "StatusCode"

    .line 67
    invoke-static {v14, v3, v2, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 68
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    move-object/from16 v2, v19

    .line 69
    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 70
    invoke-virtual {v0, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v3, "seq"

    .line 71
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v3, "online"

    .line 72
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v3, "networkSupport"

    .line 73
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 74
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    move-object v4, v8

    const-wide v7, 0x41224f8000000000L    # 600000.0

    .line 75
    invoke-static {v11, v9, v10, v7, v8}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v11, "downloadTime"

    .line 76
    invoke-static {v11, v9, v10, v7, v8}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v7, "publishTime"

    move-object v8, v12

    const-wide v11, 0x41c2064200000000L    # 6.048E8

    .line 77
    invoke-static {v7, v9, v10, v11, v12}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v7, "notificationTime"

    .line 78
    invoke-static {v7, v9, v10, v11, v12}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v7, "PackageApp"

    .line 79
    invoke-static {v14, v7, v3, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 80
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v3, "ret"

    .line 82
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-object/from16 v3, v18

    .line 83
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 84
    invoke-virtual {v0, v13}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v6, "JSBridgeReturn"

    .line 85
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v7

    invoke-static {v14, v6, v7, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 86
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    const-string/jumbo v6, "tbInitTime"

    .line 87
    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v6, "wvInitTime"

    .line 88
    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v6, "WVInitTime"

    .line 89
    invoke-static {v14, v6, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 90
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    const-string v6, "installedApps"

    .line 91
    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v6, "DiurnalOverview"

    .line 92
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v7

    move-object/from16 v11, v17

    invoke-static {v11, v6, v7, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 93
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    const-string/jumbo v6, "zcacheDownLoadTime"

    .line 94
    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v6, "zcacheTaskTime"

    .line 95
    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v6, "waitTime"

    .line 96
    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 97
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v6

    .line 98
    invoke-virtual {v6, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 99
    invoke-virtual {v6, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 100
    invoke-virtual {v6, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v2, "ZCacheDownLoadTime"

    .line 101
    invoke-static {v11, v2, v0, v6}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 102
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    const-string/jumbo v2, "type"

    .line 103
    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v2, "WebViewWrapType"

    .line 104
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    invoke-static {v14, v2, v3, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 105
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    move-object/from16 v2, v16

    .line 106
    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 107
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    const-string v5, "initTime"

    .line 108
    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v5, "CoreInitTime"

    .line 109
    invoke-static {v14, v5, v3, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 110
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "coreType"

    .line 112
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "CoreTypeByPV"

    .line 113
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    invoke-static {v14, v3, v5, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 114
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v13}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v3, "r_type"

    .line 116
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v3, "process_mode"

    .line 117
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "background"

    .line 118
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "MultiProcess"

    .line 119
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    invoke-static {v14, v3, v5, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 120
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    const-string/jumbo v5, "pageUrl"

    .line 121
    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v5, "crashInfo"

    .line 122
    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v5, "params"

    .line 123
    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v5, "invokeMethod"

    .line 124
    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v5, "ParamParseError"

    .line 125
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    invoke-static {v14, v5, v6, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 126
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    .line 127
    invoke-virtual {v3, v13}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v5, "UseWebGl"

    .line 128
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    invoke-static {v14, v5, v6, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 129
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    const-string/jumbo v5, "web_init_mode"

    .line 130
    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v5, "web_succ_mode"

    .line 131
    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v5, "web_succ_reason"

    .line 132
    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v5, "gpu_succ_mode"

    .line 133
    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v5, "gpu_succ_mode"

    .line 134
    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v5, "gpu_succ_reason"

    .line 135
    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "MultiProcessByPV"

    .line 136
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    invoke-static {v14, v3, v5, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 137
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v13}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v3, "via"

    .line 139
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 140
    invoke-virtual {v0, v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v3, "pkgVersion"

    .line 141
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v3, "pkgSeq"

    .line 142
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 143
    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v2, "protocolType"

    .line 144
    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v2, "hasInit"

    .line 145
    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v2, "isFinished"

    .line 146
    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 147
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v1, "verifyError"

    .line 148
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "inMainProcess"

    .line 149
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 150
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    const-string/jumbo v2, "verifyResTime"

    const-wide v5, 0x41224f8000000000L    # 600000.0

    .line 151
    invoke-static {v2, v9, v10, v5, v6}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 152
    invoke-static {v4, v9, v10, v5, v6}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "verifyCacheSize"

    .line 153
    invoke-static {v2, v9, v10, v5, v6}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "allVerifyTime"

    .line 154
    invoke-static {v2, v9, v10, v5, v6}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "initTime"

    const-wide v3, 0x40ed4c0000000000L    # 60000.0

    .line 155
    invoke-static {v2, v9, v10, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "tcp"

    const-wide v3, 0x41224f8000000000L    # 600000.0

    .line 156
    invoke-static {v2, v9, v10, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "ssl"

    .line 157
    invoke-static {v2, v9, v10, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "firstByte"

    .line 158
    invoke-static {v2, v9, v10, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "domLoad"

    .line 159
    invoke-static {v2, v9, v10, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "pageLoad"

    .line 160
    invoke-static {v2, v9, v10, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "c"

    .line 161
    invoke-static {v2, v9, v10, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "dc"

    .line 162
    invoke-static {v2, v9, v10, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "dcl"

    .line 163
    invoke-static {v2, v9, v10, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "dl"

    .line 164
    invoke-static {v2, v9, v10, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "dns"

    .line 165
    invoke-static {v2, v9, v10, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "lee"

    .line 166
    invoke-static {v2, v9, v10, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "les"

    .line 167
    invoke-static {v2, v9, v10, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "req"

    .line 168
    invoke-static {v2, v9, v10, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "rpe"

    .line 169
    invoke-static {v2, v9, v10, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "rps"

    .line 170
    invoke-static {v2, v9, v10, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "scs"

    .line 171
    invoke-static {v2, v9, v10, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "H5"

    .line 172
    invoke-static {v14, v2, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    const-string v2, "H5_2"

    .line 173
    invoke-static {v14, v2, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    const-string v2, "H5_3"

    .line 174
    invoke-static {v14, v2, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    const-string v2, "H5_4"

    .line 175
    invoke-static {v14, v2, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    const-string v2, "H5_5"

    .line 176
    invoke-static {v14, v2, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    const/4 v0, 0x1

    .line 177
    sput-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "AppMonitorUtil"

    const-string v1, "AppMonitor not found"

    .line 178
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
