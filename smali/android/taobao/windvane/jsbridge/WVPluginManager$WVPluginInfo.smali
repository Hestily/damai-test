.class public Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/jsbridge/WVPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WVPluginInfo"
.end annotation


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field private className:Ljava/lang/String;

.field private paramObj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->className:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->className:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->className:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->paramObj:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getParamObj()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->paramObj:Ljava/lang/Object;

    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->className:Ljava/lang/String;

    return-void
.end method

.method public setParamObj(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->paramObj:Ljava/lang/Object;

    return-void
.end method
