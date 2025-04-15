.class public Landroid/taobao/windvane/packageapp/zipapp/ZCacheResourceResponse;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final ZCACHE_INFO:Ljava/lang/String; = "X-ZCache-Info"


# instance fields
.field public encoding:Ljava/lang/String;

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public inputStream:Ljava/io/InputStream;

.field public isSuccess:Z

.field public mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZCacheResourceResponse;->isSuccess:Z

    return-void
.end method
