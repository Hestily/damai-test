.class public Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public mEncoding:Ljava/lang/String;

.field public mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mInputStream:Ljava/io/InputStream;

.field public mMimeType:Ljava/lang/String;

.field public status:I

.field public zcacheInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mMimeType:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mEncoding:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mInputStream:Ljava/io/InputStream;

    .line 5
    iput-object p4, p0, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mHeaders:Ljava/util/Map;

    return-void
.end method
