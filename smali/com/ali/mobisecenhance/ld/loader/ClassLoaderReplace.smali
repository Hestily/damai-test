.class public Lcom/ali/mobisecenhance/ld/loader/ClassLoaderReplace;
.super Ljava/lang/Object;
.source "ClassLoaderReplace.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/ld/RecordLog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/ali/mobisecenhance/ld/loader/ClassLoaderReplace;

    const-string v1, "cn.damai_shell_alijtca_plus"

    invoke-static {v1, v0}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 19
    const-class v0, Lcom/ali/mobisecenhance/ld/loader/ClassLoaderReplace;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/loader/ClassLoaderReplace;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/loader/ClassLoaderReplace;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldClassLoader"    # Ljava/lang/ClassLoader;
    .param p3, "newClassLoader"    # Ljava/lang/ClassLoader;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    if-ne p2, p3, :cond_0

    .line 170
    sget-object v0, Lcom/ali/mobisecenhance/ld/loader/ClassLoaderReplace;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v1, Lcom/ali/mobisecenhance/ld/loader/ClassLoaderReplace;->TAG:Ljava/lang/String;

    const-string v2, "the classloader is same..."

    invoke-virtual {v0, v1, v2}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 173
    :cond_0
    sget-object v0, Lcom/ali/mobisecenhance/ld/loader/ClassLoaderReplace;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v1, Lcom/ali/mobisecenhance/ld/loader/ClassLoaderReplace;->TAG:Ljava/lang/String;

    const-string v2, "need replace classloader..."

    invoke-virtual {v0, v1, v2}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ali/mobisecenhance/ld/loader/ClassLoaderReplace;->replaceClassloader(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private native replaceApplicationLoadersMLoaders(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V
.end method

.method private native replaceApplicationMLoadedApk(Ljava/lang/String;Ljava/lang/ClassLoader;)V
.end method

.method private native replaceClassloader(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native replaceContext(Landroid/content/Context;Ljava/lang/ClassLoader;)V
.end method

.method private native replaceLoadedApkMApplication(Ljava/lang/String;Ljava/lang/ClassLoader;)V
.end method
