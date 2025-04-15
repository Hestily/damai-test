.class public Landroid/taobao/windvane/embed/WVEVManager$WVEmbedViewInfo;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/embed/WVEVManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WVEmbedViewInfo"
.end annotation


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field private className:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/embed/WVEVManager$WVEmbedViewInfo;->className:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/taobao/windvane/embed/WVEVManager$WVEmbedViewInfo;->className:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Landroid/taobao/windvane/embed/WVEVManager$WVEmbedViewInfo;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/embed/WVEVManager$WVEmbedViewInfo;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/embed/WVEVManager$WVEmbedViewInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/embed/WVEVManager$WVEmbedViewInfo;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/embed/WVEVManager$WVEmbedViewInfo;->className:Ljava/lang/String;

    return-void
.end method
