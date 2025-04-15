.class public interface abstract Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final CONFIG_CLOSED_FAILED:Ljava/lang/String; = "23"

.field public static final CREATE_STREAM_FAILED:Ljava/lang/String; = "11"

.field public static final FORCE_ONLINE_FAILED:Ljava/lang/String; = "22"

.field public static final FORCE_UPDATE_FAILED:Ljava/lang/String; = "21"

.field public static final MAPPING_URL_MATCH_FAILED:Ljava/lang/String; = "14"

.field public static final MAPPING_URL_NULL_FAILED:Ljava/lang/String; = "13"

.field public static final NOT_INSTALL_FAILED:Ljava/lang/String; = "20"

.field public static final READ_COMBO_LOCAL_FILE_FAILED:Ljava/lang/String; = "15"

.field public static final READ_LOCAL_FILE_FAILED:Ljava/lang/String; = "12"

.field public static final SECURITY_FAILED:Ljava/lang/String; = "10"

.field public static final UNKNOWN_FAILED:Ljava/lang/String; = "9"

.field public static final ZIP_CONFIG_EMPTY_FAILED:Ljava/lang/String; = "26"

.field public static final ZIP_REMOVED_BY_CLEAR:Ljava/lang/String; = "24"

.field public static final ZIP_REMOVED_BY_CONFIG:Ljava/lang/String; = "25"


# virtual methods
.method public abstract commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract commitPackageQueueInfo(Ljava/lang/String;JJ)V
.end method

.method public abstract commitPackageUpdateStartInfo(JJ)V
.end method

.method public abstract commitPackageVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract commitPackageVisitInfo(Ljava/lang/String;Ljava/lang/String;JJJJJ)V
.end method

.method public abstract commitPackageVisitSuccess(Ljava/lang/String;J)V
.end method

.method public abstract commitPackageWarning(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract commitZCacheDiurnalOverview(Ljava/lang/String;)V
.end method

.method public abstract commitZCacheDownLoadTime(Ljava/lang/String;JJJLjava/lang/String;Z)V
.end method

.method public abstract commitZCacheDownLoadTime(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Z)V
.end method

.method public abstract onStartCleanAppCache(JIIIFIIFI)V
.end method

.method public abstract packageApp(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJILjava/lang/String;ZJ)V
.end method

.method public abstract uploadBackgroundTime(J)V
.end method

.method public abstract uploadDiffTimeTime(J)V
.end method

.method public abstract uploadStartAppTime(J)V
.end method
