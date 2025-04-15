.class public Lcom/j2c/enhance/SoLoad992979061;
.super Ljava/lang/Object;
.source "SoLoad.java"


# static fields
.field private static Max_So_Number:I

.field private static isLoadLibrary:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static loadedSoName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static m_all_loaders:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static needforceCopySo:Z

.field private static soLoadedInThisClassLoader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/j2c/enhance/SoLoad992979061;->mContext:Landroid/content/Context;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/j2c/enhance/SoLoad992979061;->soLoadedInThisClassLoader:Z

    .line 23
    sput-boolean v0, Lcom/j2c/enhance/SoLoad992979061;->needforceCopySo:Z

    .line 24
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sput-object v1, Lcom/j2c/enhance/SoLoad992979061;->m_all_loaders:Ljava/util/Vector;

    .line 25
    const/16 v1, 0xa

    sput v1, Lcom/j2c/enhance/SoLoad992979061;->Max_So_Number:I

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/j2c/enhance/SoLoad992979061;->loadedSoName:Ljava/util/List;

    .line 27
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/j2c/enhance/SoLoad992979061;->isLoadLibrary:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyFileUsingFileStreams(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .line 88
    const-string v0, "copy from %s to %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "info":Ljava/lang/String;
    const-string v1, "soload"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "input":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 94
    .local v2, "output":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    .line 95
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 96
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 98
    .local v4, "buf":[B
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .line 98
    .local v6, "bytesRead":I
    if-lez v5, :cond_0

    .line 99
    invoke-virtual {v2, v4, v3, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 102
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v4    # "buf":[B
    .end local v6    # "bytesRead":I
    nop

    .line 107
    return-void

    .line 103
    :catch_0
    move-exception v3

    .line 104
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static getContextPrivate()Landroid/content/Context;
    .locals 7

    .line 69
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 70
    .local v1, "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 71
    .local v2, "currentActivityThreadm":Ljava/lang/reflect/Method;
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 72
    .local v4, "currentActivityThreado":Ljava/lang/Object;
    const-string v5, "getApplication"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 73
    .local v5, "getApplication_m":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 75
    .end local v1    # "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "currentActivityThreadm":Ljava/lang/reflect/Method;
    .end local v4    # "currentActivityThreado":Ljava/lang/Object;
    .end local v5    # "getApplication_m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 3
    .param p0, "context"    # Landroid/app/Application;

    .line 33
    :try_start_0
    const-string v0, "soload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter Init Context context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sput-object p0, Lcom/j2c/enhance/SoLoad992979061;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {p0}, Lcom/j2c/enhance/SoLoad992979061;->setContextPrivate(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    const-string v1, "soload"

    const-string v2, "init context failed."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 5
    .param p0, "soName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 166
    .local p1, "currentCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/j2c/enhance/SoLoad992979061;->m_all_loaders:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 167
    sget-object v0, Lcom/j2c/enhance/SoLoad992979061;->m_all_loaders:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v0, "soload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter loadJ2cSo .... soLoadedInThisClassLoader is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/j2c/enhance/SoLoad992979061;->soLoadedInThisClassLoader:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v0, "soload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter loadJ2cSo .... current class is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v0, "soload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter loadJ2cSo .... current classloader is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-boolean v0, Lcom/j2c/enhance/SoLoad992979061;->soLoadedInThisClassLoader:Z

    if-eqz v0, :cond_0

    sput-boolean v2, Lcom/j2c/enhance/SoLoad992979061;->soLoadedInThisClassLoader:Z

    .line 174
    :cond_0
    sput-boolean v1, Lcom/j2c/enhance/SoLoad992979061;->needforceCopySo:Z

    .line 175
    sget-object v0, Lcom/j2c/enhance/SoLoad992979061;->loadedSoName:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_1
    sget-object v0, Lcom/j2c/enhance/SoLoad992979061;->loadedSoName:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 178
    sget-boolean v0, Lcom/j2c/enhance/SoLoad992979061;->soLoadedInThisClassLoader:Z

    if-eqz v0, :cond_2

    sput-boolean v2, Lcom/j2c/enhance/SoLoad992979061;->soLoadedInThisClassLoader:Z

    .line 179
    :cond_2
    sput-boolean v1, Lcom/j2c/enhance/SoLoad992979061;->needforceCopySo:Z

    .line 180
    sget-object v0, Lcom/j2c/enhance/SoLoad992979061;->loadedSoName:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/j2c/enhance/SoLoad992979061;->soLoadedInThisClassLoader:Z

    if-eqz v0, :cond_4

    return-void

    .line 184
    :cond_4
    sget-boolean v0, Lcom/j2c/enhance/SoLoad992979061;->needforceCopySo:Z

    if-eqz v0, :cond_6

    .line 187
    :try_start_0
    const-string v0, "soload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadLibrary so "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v0, Lcom/j2c/enhance/SoLoad992979061;->isLoadLibrary:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/j2c/enhance/SoLoad992979061;->isLoadLibrary:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 192
    :cond_5
    sput-boolean v1, Lcom/j2c/enhance/SoLoad992979061;->soLoadedInThisClassLoader:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "soload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadJ2CSo UnsatisfiedLinkError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {p0, p1}, Lcom/j2c/enhance/SoLoad992979061;->soLoadInFile(Ljava/lang/String;Ljava/lang/Class;)V

    .line 198
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_6
    :goto_1
    return-void
.end method

.method private static setContextPrivate(Landroid/app/Application;)V
    .locals 6
    .param p0, "context"    # Landroid/app/Application;

    .line 46
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    .local v0, "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 48
    .local v1, "currentActivityThreadm":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 50
    .local v2, "currentActivityThreado":Ljava/lang/Object;
    const-string v3, "mInitialApplication"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 51
    .local v3, "initApplication":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 52
    invoke-virtual {v3, v2, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    const-string v4, "soload"

    const-string v5, "set application successfull"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0    # "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "currentActivityThreadm":Ljava/lang/reflect/Method;
    .end local v2    # "currentActivityThreado":Ljava/lang/Object;
    .end local v3    # "initApplication":Ljava/lang/reflect/Field;
    nop

    .line 60
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static soLoadInFile(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 11
    .param p0, "oriSoName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 112
    .local p1, "currentCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/j2c/enhance/SoLoad992979061;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/j2c/enhance/SoLoad992979061;->getContextPrivate()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/j2c/enhance/SoLoad992979061;->mContext:Landroid/content/Context;

    .line 116
    :cond_0
    sget-object v0, Lcom/j2c/enhance/SoLoad992979061;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 117
    const-string v0, "class [%s] run too early before get android Context,you\'d better to skip this class if meet crash ..."

    new-array v2, v2, [Ljava/lang/Object;

    .line 118
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 117
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "out":Ljava/lang/String;
    const-string v1, "soload"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 123
    .end local v0    # "out":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/j2c/enhance/SoLoad992979061;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "ali-s"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 125
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 129
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "soName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/j2c/enhance/SoLoad992979061;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v4, "src":Ljava/io/File;
    nop

    .line 132
    .local v1, "i":I
    :goto_0
    sget v5, Lcom/j2c/enhance/SoLoad992979061;->Max_So_Number:I

    if-ge v1, v5, :cond_5

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "loadSoName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v6, "dest":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 139
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 140
    sput-boolean v2, Lcom/j2c/enhance/SoLoad992979061;->soLoadedInThisClassLoader:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_1

    .line 142
    :catch_0
    move-exception v7

    .line 143
    .local v7, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v8, "soload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[soLoadInFile-1] UnsatisfiedLinkError "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v7    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 149
    invoke-static {v4, v6}, Lcom/j2c/enhance/SoLoad992979061;->copyFileUsingFileStreams(Ljava/io/File;Ljava/io/File;)V

    .line 151
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 152
    sput-boolean v2, Lcom/j2c/enhance/SoLoad992979061;->soLoadedInThisClassLoader:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    goto :goto_1

    .line 154
    :catch_1
    move-exception v7

    .line 155
    .restart local v7    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v8, "soload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[soLoadInFile-2] UnsatisfiedLinkError "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v5    # "loadSoName":Ljava/lang/String;
    .end local v6    # "dest":Ljava/io/File;
    .end local v7    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "i":I
    :cond_5
    :goto_1
    return-void
.end method
