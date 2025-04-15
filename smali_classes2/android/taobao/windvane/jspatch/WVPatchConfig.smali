.class public Landroid/taobao/windvane/jspatch/WVPatchConfig;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public jsString:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/jspatch/WVPatchConfig;->jsString:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/jspatch/WVPatchConfig;->pattern:Ljava/util/regex/Pattern;

    .line 4
    iput-object v0, p0, Landroid/taobao/windvane/jspatch/WVPatchConfig;->key:Ljava/lang/String;

    return-void
.end method
