.class Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/config/WVUrlMatchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UrlParseRes"
.end annotation


# instance fields
.field public port:I

.field public scheme:Ljava/lang/String;

.field public subHosts:[Ljava/lang/String;

.field public subPaths:[Ljava/lang/String;

.field final synthetic this$0:Landroid/taobao/windvane/config/WVUrlMatchUtils;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/config/WVUrlMatchUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->this$0:Landroid/taobao/windvane/config/WVUrlMatchUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->scheme:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subHosts:[Ljava/lang/String;

    .line 4
    iput-object p1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->subPaths:[Ljava/lang/String;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroid/taobao/windvane/config/WVUrlMatchUtils$UrlParseRes;->port:I

    return-void
.end method
