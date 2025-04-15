.class public Landroidx/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/RenderScript$MessageThread;,
        Landroidx/renderscript/RenderScript$Priority;,
        Landroidx/renderscript/RenderScript$RSErrorHandler;,
        Landroidx/renderscript/RenderScript$RSMessageHandler;,
        Landroidx/renderscript/RenderScript$ContextType;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "com.android.renderscript.cache"

.field public static final CREATE_FLAG_NONE:I = 0x0

.field static final DEBUG:Z = false

.field static final LOG_ENABLED:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "RenderScript_jni"

.field static final SUPPORT_LIB_API:I = 0x17

.field static final SUPPORT_LIB_VERSION:I = 0x8fd

.field static lock:Ljava/lang/Object;

.field private static mBlackList:Ljava/lang/String;

.field static mCachePath:Ljava/lang/String;

.field private static mProcessContextList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/renderscript/RenderScript;",
            ">;"
        }
    .end annotation
.end field

.field static registerNativeAllocation:Ljava/lang/reflect/Method;

.field static registerNativeFree:Ljava/lang/reflect/Method;

.field static sInitialized:Z

.field private static sNative:I

.field static sPointerSize:I

.field static sRuntime:Ljava/lang/Object;

.field private static sSdkVersion:I

.field static sUseGCHooks:Z

.field private static useIOlib:Z

.field private static useNative:Z


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field mContext:J

.field private mContextFlags:I

.field private mContextSdkVersion:I

.field mContextType:Landroidx/renderscript/RenderScript$ContextType;

.field mDev:J

.field mElement_ALLOCATION:Landroidx/renderscript/Element;

.field mElement_A_8:Landroidx/renderscript/Element;

.field mElement_BOOLEAN:Landroidx/renderscript/Element;

.field mElement_CHAR_2:Landroidx/renderscript/Element;

.field mElement_CHAR_3:Landroidx/renderscript/Element;

.field mElement_CHAR_4:Landroidx/renderscript/Element;

.field mElement_DOUBLE_2:Landroidx/renderscript/Element;

.field mElement_DOUBLE_3:Landroidx/renderscript/Element;

.field mElement_DOUBLE_4:Landroidx/renderscript/Element;

.field mElement_ELEMENT:Landroidx/renderscript/Element;

.field mElement_F32:Landroidx/renderscript/Element;

.field mElement_F64:Landroidx/renderscript/Element;

.field mElement_FLOAT_2:Landroidx/renderscript/Element;

.field mElement_FLOAT_3:Landroidx/renderscript/Element;

.field mElement_FLOAT_4:Landroidx/renderscript/Element;

.field mElement_I16:Landroidx/renderscript/Element;

.field mElement_I32:Landroidx/renderscript/Element;

.field mElement_I64:Landroidx/renderscript/Element;

.field mElement_I8:Landroidx/renderscript/Element;

.field mElement_INT_2:Landroidx/renderscript/Element;

.field mElement_INT_3:Landroidx/renderscript/Element;

.field mElement_INT_4:Landroidx/renderscript/Element;

.field mElement_LONG_2:Landroidx/renderscript/Element;

.field mElement_LONG_3:Landroidx/renderscript/Element;

.field mElement_LONG_4:Landroidx/renderscript/Element;

.field mElement_MATRIX_2X2:Landroidx/renderscript/Element;

.field mElement_MATRIX_3X3:Landroidx/renderscript/Element;

.field mElement_MATRIX_4X4:Landroidx/renderscript/Element;

.field mElement_RGBA_4444:Landroidx/renderscript/Element;

.field mElement_RGBA_5551:Landroidx/renderscript/Element;

.field mElement_RGBA_8888:Landroidx/renderscript/Element;

.field mElement_RGB_565:Landroidx/renderscript/Element;

.field mElement_RGB_888:Landroidx/renderscript/Element;

.field mElement_SAMPLER:Landroidx/renderscript/Element;

.field mElement_SCRIPT:Landroidx/renderscript/Element;

.field mElement_SHORT_2:Landroidx/renderscript/Element;

.field mElement_SHORT_3:Landroidx/renderscript/Element;

.field mElement_SHORT_4:Landroidx/renderscript/Element;

.field mElement_TYPE:Landroidx/renderscript/Element;

.field mElement_U16:Landroidx/renderscript/Element;

.field mElement_U32:Landroidx/renderscript/Element;

.field mElement_U64:Landroidx/renderscript/Element;

.field mElement_U8:Landroidx/renderscript/Element;

.field mElement_UCHAR_2:Landroidx/renderscript/Element;

.field mElement_UCHAR_3:Landroidx/renderscript/Element;

.field mElement_UCHAR_4:Landroidx/renderscript/Element;

.field mElement_UINT_2:Landroidx/renderscript/Element;

.field mElement_UINT_3:Landroidx/renderscript/Element;

.field mElement_UINT_4:Landroidx/renderscript/Element;

.field mElement_ULONG_2:Landroidx/renderscript/Element;

.field mElement_ULONG_3:Landroidx/renderscript/Element;

.field mElement_ULONG_4:Landroidx/renderscript/Element;

.field mElement_USHORT_2:Landroidx/renderscript/Element;

.field mElement_USHORT_3:Landroidx/renderscript/Element;

.field mElement_USHORT_4:Landroidx/renderscript/Element;

.field mErrorCallback:Landroidx/renderscript/RenderScript$RSErrorHandler;

.field mIncCon:J

.field mIncDev:J

.field mIncLoaded:Z

.field private mIsProcessContext:Z

.field mMessageCallback:Landroidx/renderscript/RenderScript$RSMessageHandler;

.field mMessageThread:Landroidx/renderscript/RenderScript$MessageThread;

.field private mNativeLibDir:Ljava/lang/String;

.field mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field mSampler_CLAMP_LINEAR:Landroidx/renderscript/Sampler;

.field mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

.field mSampler_CLAMP_NEAREST:Landroidx/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_LINEAR:Landroidx/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_NEAREST:Landroidx/renderscript/Sampler;

.field mSampler_WRAP_LINEAR:Landroidx/renderscript/Sampler;

.field mSampler_WRAP_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

.field mSampler_WRAP_NEAREST:Landroidx/renderscript/Sampler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroidx/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    const-string v0, ""

    .line 2
    sput-object v0, Landroidx/renderscript/RenderScript;->mBlackList:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/renderscript/RenderScript;->lock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 4
    sput v0, Landroidx/renderscript/RenderScript;->sNative:I

    .line 5
    sput v0, Landroidx/renderscript/RenderScript;->sSdkVersion:I

    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Landroidx/renderscript/RenderScript;->useIOlib:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/renderscript/RenderScript;->mIsProcessContext:Z

    .line 3
    iput v0, p0, Landroidx/renderscript/RenderScript;->mContextFlags:I

    .line 4
    iput v0, p0, Landroidx/renderscript/RenderScript;->mContextSdkVersion:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Landroidx/renderscript/RenderScript;->mMessageCallback:Landroidx/renderscript/RenderScript$RSMessageHandler;

    .line 6
    iput-object v1, p0, Landroidx/renderscript/RenderScript;->mErrorCallback:Landroidx/renderscript/RenderScript$RSErrorHandler;

    .line 7
    sget-object v1, Landroidx/renderscript/RenderScript$ContextType;->NORMAL:Landroidx/renderscript/RenderScript$ContextType;

    iput-object v1, p0, Landroidx/renderscript/RenderScript;->mContextType:Landroidx/renderscript/RenderScript$ContextType;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object p1, p0, Landroidx/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    :cond_0
    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Landroidx/renderscript/RenderScript;->mIncDev:J

    .line 12
    iput-wide v1, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 13
    iput-boolean v0, p0, Landroidx/renderscript/RenderScript;->mIncLoaded:Z

    .line 14
    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object p1, p0, Landroidx/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method public static create(Landroid/content/Context;)Landroidx/renderscript/RenderScript;
    .locals 1

    .line 1
    sget-object v0, Landroidx/renderscript/RenderScript$ContextType;->NORMAL:Landroidx/renderscript/RenderScript$ContextType;

    invoke-static {p0, v0}, Landroidx/renderscript/RenderScript;->create(Landroid/content/Context;Landroidx/renderscript/RenderScript$ContextType;)Landroidx/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;I)Landroidx/renderscript/RenderScript;
    .locals 2

    .line 5
    sget-object v0, Landroidx/renderscript/RenderScript$ContextType;->NORMAL:Landroidx/renderscript/RenderScript$ContextType;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroidx/renderscript/RenderScript;->create(Landroid/content/Context;ILandroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;ILandroidx/renderscript/RenderScript$ContextType;)Landroidx/renderscript/RenderScript;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, p2, v0}, Landroidx/renderscript/RenderScript;->create(Landroid/content/Context;ILandroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;ILandroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;
    .locals 4

    .line 7
    sget-object v0, Landroidx/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Landroidx/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/renderscript/RenderScript;

    .line 9
    iget-object v3, v2, Landroidx/renderscript/RenderScript;->mContextType:Landroidx/renderscript/RenderScript$ContextType;

    if-ne v3, p2, :cond_0

    iget v3, v2, Landroidx/renderscript/RenderScript;->mContextFlags:I

    if-ne v3, p3, :cond_0

    iget v3, v2, Landroidx/renderscript/RenderScript;->mContextSdkVersion:I

    if-ne v3, p1, :cond_0

    .line 10
    monitor-exit v0

    return-object v2

    .line 11
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;

    move-result-object p0

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Landroidx/renderscript/RenderScript;->mIsProcessContext:Z

    .line 13
    sget-object p1, Landroidx/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static create(Landroid/content/Context;Landroidx/renderscript/RenderScript$ContextType;)Landroidx/renderscript/RenderScript;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Landroidx/renderscript/RenderScript;->create(Landroid/content/Context;Landroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 4
    invoke-static {p0, v0, p1, p2}, Landroidx/renderscript/RenderScript;->create(Landroid/content/Context;ILandroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static createMultiContext(Landroid/content/Context;Landroidx/renderscript/RenderScript$ContextType;II)Landroidx/renderscript/RenderScript;
    .locals 0

    .line 1
    invoke-static {p0, p3, p1, p2}, Landroidx/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static forceCompat()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput v0, Landroidx/renderscript/RenderScript;->sNative:I

    return-void
.end method

.method private static internalCreate(Landroid/content/Context;ILandroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;
    .locals 10

    .line 1
    new-instance v7, Landroidx/renderscript/RenderScript;

    invoke-direct {v7, p0}, Landroidx/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 2
    sget v0, Landroidx/renderscript/RenderScript;->sSdkVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    sput p1, Landroidx/renderscript/RenderScript;->sSdkVersion:I

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_e

    .line 4
    :goto_0
    sget v0, Landroidx/renderscript/RenderScript;->sSdkVersion:I

    invoke-static {v0, p0}, Landroidx/renderscript/RenderScript;->setupNative(ILandroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Landroidx/renderscript/RenderScript;->useNative:Z

    .line 5
    sget-object p0, Landroidx/renderscript/RenderScript;->lock:Ljava/lang/Object;

    monitor-enter p0

    .line 6
    :try_start_0
    sget-boolean v0, Landroidx/renderscript/RenderScript;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/16 v2, 0x8fd

    const/16 v3, 0x17

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_2

    :try_start_1
    const-string v0, "dalvik.system.VMRuntime"

    .line 7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v6, "getRuntime"

    new-array v8, v5, [Ljava/lang/Class;

    .line 8
    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v8, v5, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v6, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Landroidx/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    const-string v6, "registerNativeAllocation"

    new-array v8, v4, [Ljava/lang/Class;

    .line 10
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroidx/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    const-string v6, "registerNativeFree"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v9, v8, v5

    .line 11
    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    .line 12
    sput-boolean v4, Landroidx/renderscript/RenderScript;->sUseGCHooks:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v0, "RenderScript_jni"

    const-string v6, "No GC methods"

    .line 13
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    sput-boolean v5, Landroidx/renderscript/RenderScript;->sUseGCHooks:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :goto_1
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_1

    iget-object v0, v7, Landroidx/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v7, Landroidx/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/librsjni.so"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v0, "rsjni"

    .line 17
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    :goto_2
    sput-boolean v4, Landroidx/renderscript/RenderScript;->sInitialized:Z

    .line 19
    invoke-static {}, Landroidx/renderscript/RenderScript;->rsnSystemGetPointerSize()I

    move-result v0

    sput v0, Landroidx/renderscript/RenderScript;->sPointerSize:I
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_4
    const-string p2, "RenderScript_jni"

    .line 20
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error loading RS jni library: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance p2, Landroidx/renderscript/RSRuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error loading RS jni library: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Support lib API: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 22
    :cond_2
    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    sget-boolean p0, Landroidx/renderscript/RenderScript;->useNative:Z

    if-eqz p0, :cond_3

    const-string p0, "RenderScript_jni"

    const-string v0, "RS native mode"

    .line 24
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    const-string p0, "RenderScript_jni"

    const-string v0, "RS compat mode"

    .line 25
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :goto_4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p0, v0, :cond_4

    .line 27
    sput-boolean v4, Landroidx/renderscript/RenderScript;->useIOlib:Z

    :cond_4
    if-ge p1, p0, :cond_5

    move v0, p0

    goto :goto_5

    :cond_5
    move v0, p1

    :goto_5
    if-ge p0, v3, :cond_6

    .line 28
    iget-object v4, v7, Landroidx/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v7, Landroidx/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/libRSSupport.so"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    :cond_6
    sget-boolean v4, Landroidx/renderscript/RenderScript;->useNative:Z

    invoke-virtual {v7, v4, v0, v1}, Landroidx/renderscript/RenderScript;->nLoadSO(ZILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 31
    sget-boolean v4, Landroidx/renderscript/RenderScript;->useNative:Z

    if-eqz v4, :cond_7

    const-string v4, "RenderScript_jni"

    const-string v6, "Unable to load libRS.so, falling back to compat mode"

    .line 32
    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sput-boolean v5, Landroidx/renderscript/RenderScript;->useNative:Z

    :cond_7
    if-ge p0, v3, :cond_8

    .line 34
    :try_start_5
    iget-object p0, v7, Landroidx/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    if-eqz p0, :cond_8

    .line 35
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    const-string p0, "RSSupport"

    .line 36
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_2

    .line 37
    :goto_6
    invoke-virtual {v7, v5, v0, v1}, Landroidx/renderscript/RenderScript;->nLoadSO(ZILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_7

    :cond_9
    const-string p0, "RenderScript_jni"

    const-string p1, "Error loading RS Compat library: nLoadSO() failed; Support lib version: 2301"

    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Error loading libRSSupport library, Support lib version: 2301"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    const-string p1, "RenderScript_jni"

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error loading RS Compat library: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " Support lib version: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error loading RS Compat library: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " Support lib version: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_a
    :goto_7
    sget-boolean p0, Landroidx/renderscript/RenderScript;->useIOlib:Z

    if-eqz p0, :cond_c

    :try_start_6
    const-string p0, "RSSupportIO"

    .line 43
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    .line 44
    :catch_3
    sput-boolean v5, Landroidx/renderscript/RenderScript;->useIOlib:Z

    .line 45
    :goto_8
    sget-boolean p0, Landroidx/renderscript/RenderScript;->useIOlib:Z

    if-eqz p0, :cond_b

    invoke-virtual {v7}, Landroidx/renderscript/RenderScript;->nLoadIOSO()Z

    move-result p0

    if-nez p0, :cond_c

    :cond_b
    const-string p0, "RenderScript_jni"

    const-string v0, "Unable to load libRSSupportIO.so, USAGE_IO not supported"

    .line 46
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sput-boolean v5, Landroidx/renderscript/RenderScript;->useIOlib:Z

    .line 48
    :cond_c
    invoke-virtual {v7}, Landroidx/renderscript/RenderScript;->nDeviceCreate()J

    move-result-wide v1

    iput-wide v1, v7, Landroidx/renderscript/RenderScript;->mDev:J

    const/4 v3, 0x0

    .line 49
    iget v5, p2, Landroidx/renderscript/RenderScript$ContextType;->mID:I

    iget-object v6, v7, Landroidx/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    move-object v0, v7

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->nContextCreate(JIIILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v7, Landroidx/renderscript/RenderScript;->mContext:J

    .line 50
    iput-object p2, v7, Landroidx/renderscript/RenderScript;->mContextType:Landroidx/renderscript/RenderScript$ContextType;

    .line 51
    iput p3, v7, Landroidx/renderscript/RenderScript;->mContextFlags:I

    .line 52
    iput p1, v7, Landroidx/renderscript/RenderScript;->mContextSdkVersion:I

    const-wide/16 p0, 0x0

    cmp-long p2, v0, p0

    if-eqz p2, :cond_d

    .line 53
    new-instance p0, Landroidx/renderscript/RenderScript$MessageThread;

    invoke-direct {p0, v7}, Landroidx/renderscript/RenderScript$MessageThread;-><init>(Landroidx/renderscript/RenderScript;)V

    iput-object p0, v7, Landroidx/renderscript/RenderScript;->mMessageThread:Landroidx/renderscript/RenderScript$MessageThread;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-object v7

    .line 55
    :cond_d
    new-instance p0, Landroidx/renderscript/RSDriverException;

    const-string p1, "Failed to create RS context."

    invoke-direct {p0, p1}, Landroidx/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p1

    .line 56
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1

    .line 57
    :cond_e
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Can\'t have two contexts with different SDK versions in support lib"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static releaseAllContexts()V
    .locals 4

    .line 1
    sget-object v0, Landroidx/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroidx/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Landroidx/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/renderscript/RenderScript;

    const/4 v3, 0x0

    .line 6
    iput-boolean v3, v2, Landroidx/renderscript/RenderScript;->mIsProcessContext:Z

    .line 7
    invoke-virtual {v2}, Landroidx/renderscript/RenderScript;->destroy()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static native rsnSystemGetPointerSize()I
.end method

.method public static setBlackList(Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sput-object p0, Landroidx/renderscript/RenderScript;->mBlackList:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "com.android.renderscript.cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Landroidx/renderscript/RenderScript;->mCachePath:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method private static setupNative(ILandroid/content/Context;)Z
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    if-ge v0, p0, :cond_0

    const/16 p0, 0x15

    if-ge v0, p0, :cond_0

    .line 2
    sput v1, Landroidx/renderscript/RenderScript;->sNative:I

    .line 3
    :cond_0
    sget p0, Landroidx/renderscript/RenderScript;->sNative:I

    const/4 v0, -0x1

    const/4 v2, 0x1

    if-ne p0, v0, :cond_4

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 5
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    const-string v5, "getInt"

    .line 6
    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "debug.rs.forcecompat"

    aput-object v4, v3, v1

    .line 7
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v2

    .line 8
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_1

    if-nez v0, :cond_1

    .line 10
    sput v2, Landroidx/renderscript/RenderScript;->sNative:I

    goto :goto_1

    .line 11
    :cond_1
    sput v1, Landroidx/renderscript/RenderScript;->sNative:I

    .line 12
    :goto_1
    sget v0, Landroidx/renderscript/RenderScript;->sNative:I

    if-ne v0, v2, :cond_4

    .line 13
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x80

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-object p1, p0

    :goto_2
    if-eqz p1, :cond_4

    const-wide/16 v5, 0x0

    :try_start_2
    const-string v0, "android.renderscript.RenderScript"

    .line 14
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x16

    if-gt v3, v7, :cond_2

    const-string v3, "getMinorID"

    new-array v7, v1, [Ljava/lang/Class;

    .line 16
    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_3

    :cond_2
    const-string v3, "getMinorVersion"

    new-array v7, v1, [Ljava/lang/Class;

    .line 18
    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-wide v7, v5

    .line 20
    :goto_3
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string v0, "com.android.support.v8.renderscript.EnableAsyncTeardown"

    .line 21
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v2, :cond_3

    cmp-long p0, v7, v5

    if-nez p0, :cond_3

    .line 22
    sput v1, Landroidx/renderscript/RenderScript;->sNative:I

    .line 23
    :cond_3
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p1, "com.android.support.v8.renderscript.EnableBlurWorkaround"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v2, :cond_4

    .line 24
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt p0, v4, :cond_4

    .line 25
    sput v1, Landroidx/renderscript/RenderScript;->sNative:I

    .line 26
    :cond_4
    sget p0, Landroidx/renderscript/RenderScript;->sNative:I

    if-ne p0, v2, :cond_6

    .line 27
    sget-object p0, Landroidx/renderscript/RenderScript;->mBlackList:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_5

    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p1, 0x28

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/wireless/security/aopsdk/replace/android/os/Build;->getMANUFACTURER()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/wireless/security/aopsdk/replace/android/os/Build;->getPRODUCT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/wireless/security/aopsdk/replace/android/os/Build;->getMODEL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 29
    sget-object p1, Landroidx/renderscript/RenderScript;->mBlackList:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 30
    sput v1, Landroidx/renderscript/RenderScript;->sNative:I

    return v1

    :cond_5
    return v2

    :cond_6
    return v1
.end method


# virtual methods
.method public contextDump()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/renderscript/RenderScript;->nContextDump(I)V

    return-void
.end method

.method public destroy()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/renderscript/RenderScript;->mIsProcessContext:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->nContextFinish()V

    .line 4
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->nIncContextFinish()V

    .line 6
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->nIncContextDestroy()V

    .line 7
    iput-wide v2, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 8
    :cond_1
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/RenderScript;->nContextDeinitToClient(J)V

    .line 9
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mMessageThread:Landroidx/renderscript/RenderScript$MessageThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 10
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->nContextDestroy()V

    .line 12
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mDev:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/RenderScript;->nDeviceDestroy(J)V

    .line 13
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncDev:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/RenderScript;->nIncDeviceDestroy(J)V

    .line 15
    iput-wide v2, p0, Landroidx/renderscript/RenderScript;->mIncDev:J

    .line 16
    :cond_2
    iput-wide v2, p0, Landroidx/renderscript/RenderScript;->mDev:J

    return-void
.end method

.method public finish()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->nContextFinish()V

    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorHandler()Landroidx/renderscript/RenderScript$RSErrorHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mErrorCallback:Landroidx/renderscript/RenderScript$RSErrorHandler;

    return-object v0
.end method

.method public getMessageHandler()Landroidx/renderscript/RenderScript$RSMessageHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mMessageCallback:Landroidx/renderscript/RenderScript$RSMessageHandler;

    return-object v0
.end method

.method isAlive()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUseNative()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/renderscript/RenderScript;->useNative:Z

    return v0
.end method

.method declared-synchronized nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nAllocationCreateBitmapRef(JLandroid/graphics/Bitmap;)J
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnAllocationCreateBitmapRef(JJLandroid/graphics/Bitmap;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nAllocationCreateFromAssetStream(III)J
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnAllocationCreateFromAssetStream(JIII)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nAllocationCreateTyped(JIIJ)J
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnAllocationCreateTyped(JJIIJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nAllocationData1D(JIIILjava/lang/Object;ILandroidx/renderscript/Element$DataType;IZ)V
    .locals 15

    move-object v14, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v14, Landroidx/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p8

    iget v11, v0, Landroidx/renderscript/Element$DataType;->mID:I

    move-object v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v1 .. v13}, Landroidx/renderscript/RenderScript;->rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(JIIIIIIJIIII)V
    .locals 18

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-virtual/range {v1 .. v17}, Landroidx/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(JIIIIIILjava/lang/Object;ILandroidx/renderscript/Element$DataType;IZ)V
    .locals 17

    move-object/from16 v15, p0

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p11

    iget v14, v0, Landroidx/renderscript/Element$DataType;->mID:I

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v15, p12

    move/from16 v16, p13

    invoke-virtual/range {v1 .. v16}, Landroidx/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V
    .locals 12

    move-object v11, p0

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 8
    iget-wide v2, v11, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroidx/renderscript/RenderScript;->rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(JIIIIIIIJIIII)V
    .locals 19

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-wide/from16 v13, p10

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    invoke-virtual/range {v1 .. v18}, Landroidx/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroidx/renderscript/Element$DataType;IZ)V
    .locals 18

    move-object/from16 v15, p0

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p12

    iget v0, v0, Landroidx/renderscript/Element$DataType;->mID:I

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move v15, v0

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-virtual/range {v1 .. v17}, Landroidx/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationElementData1D(JIII[BI)V
    .locals 12

    move-object v11, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v11, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroidx/renderscript/RenderScript;->rsnAllocationElementData1D(JJIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGenerateMipmaps(J)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnAllocationGenerateMipmaps(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nAllocationGetType(J)J
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnAllocationGetType(JJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nAllocationIoReceive(J)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnAllocationIoReceive(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nAllocationIoSend(J)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnAllocationIoSend(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nAllocationRead(JLjava/lang/Object;Landroidx/renderscript/Element$DataType;IZ)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    iget v6, p4, Landroidx/renderscript/Element$DataType;->mID:I

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnAllocationRead(JJLjava/lang/Object;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nAllocationRead1D(JIIILjava/lang/Object;ILandroidx/renderscript/Element$DataType;IZ)V
    .locals 15

    move-object v14, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v14, Landroidx/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p8

    iget v11, v0, Landroidx/renderscript/Element$DataType;->mID:I

    move-object v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v1 .. v13}, Landroidx/renderscript/RenderScript;->rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroidx/renderscript/Element$DataType;IZ)V
    .locals 17

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p11

    iget v14, v0, Landroidx/renderscript/Element$DataType;->mID:I

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v15, p12

    move/from16 v16, p13

    invoke-virtual/range {v1 .. v16}, Landroidx/renderscript/RenderScript;->rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationResize1D(JI)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnAllocationResize1D(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nAllocationResize2D(JII)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->rsnAllocationResize2D(JJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nAllocationSetSurface(JLandroid/view/Surface;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnAllocationSetSurface(JJLandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nAllocationSyncAll(JI)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnAllocationSyncAll(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nClosureCreate(JJ[J[J[I[J[J)J
    .locals 14

    move-object v13, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v13, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Landroidx/renderscript/RenderScript;->rsnClosureCreate(JJJ[J[J[I[J[J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    monitor-exit p0

    return-wide v0

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Landroidx/renderscript/RSRuntimeException;

    const-string v1, "Failed creating closure."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nClosureSetArg(JIJI)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnClosureSetArg(JJIJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nClosureSetGlobal(JJJI)V
    .locals 12

    move-object v11, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v11, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroidx/renderscript/RenderScript;->rsnClosureSetGlobal(JJJJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextCreate(JIIILjava/lang/String;)J
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Landroidx/renderscript/RenderScript;->rsnContextCreate(JIIILjava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method native nContextDeinitToClient(J)V
.end method

.method declared-synchronized nContextDestroy()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 4
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    const-wide/16 v3, 0x0

    .line 5
    iput-wide v3, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 7
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/RenderScript;->rsnContextDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextDump(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1}, Landroidx/renderscript/RenderScript;->rsnContextDump(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nContextFinish()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/RenderScript;->rsnContextFinish(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextGetErrorMessage(J)Ljava/lang/String;
.end method

.method native nContextGetUserMessage(J[I)I
.end method

.method native nContextInitToClient(J)V
.end method

.method native nContextPeekMessage(J[I)I
.end method

.method declared-synchronized nContextSendMessage(I[I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnContextSendMessage(JI[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nContextSetPriority(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1}, Landroidx/renderscript/RenderScript;->rsnContextSetPriority(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method native nDeviceCreate()J
.end method

.method native nDeviceDestroy(J)V
.end method

.method native nDeviceSetConfig(JII)V
.end method

.method declared-synchronized nElementCreate(JIZI)J
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnElementCreate(JJIZI)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nElementCreate2([J[Ljava/lang/String;[I)J
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnElementCreate2(J[J[Ljava/lang/String;[I)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nElementGetNativeData(J[I)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnElementGetNativeData(JJ[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nElementGetSubElements(J[J[Ljava/lang/String;[I)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nIncAllocationCreateTyped(JJ)J
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    iget-wide v3, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object v0, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnIncAllocationCreateTyped(JJJJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nIncContextCreate(JIII)J
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroidx/renderscript/RenderScript;->rsnIncContextCreate(JIII)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nIncContextDestroy()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 4
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    const-wide/16 v3, 0x0

    .line 5
    iput-wide v3, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 7
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/RenderScript;->rsnIncContextDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nIncContextFinish()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/RenderScript;->rsnIncContextFinish(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nIncDeviceCreate()J
.end method

.method native nIncDeviceDestroy(J)V
.end method

.method declared-synchronized nIncElementCreate(JIZI)J
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnIncElementCreate(JJIZI)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method native nIncLoadSO(ILjava/lang/String;)Z
.end method

.method nIncObjDestroy(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnIncObjDestroy(JJ)V

    :cond_0
    return-void
.end method

.method declared-synchronized nIncTypeCreate(JIIIZZI)J
    .locals 13

    move-object v12, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v12, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Landroidx/renderscript/RenderScript;->rsnIncTypeCreate(JJIIIZZI)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nInvokeClosureCreate(J[B[J[J[I)J
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnInvokeClosureCreate(JJ[B[J[J[I)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-eqz p5, :cond_0

    .line 3
    monitor-exit p0

    return-wide p1

    .line 4
    :cond_0
    :try_start_1
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string p2, "Failed creating closure."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method native nLoadIOSO()Z
.end method

.method native nLoadSO(ZILjava/lang/String;)Z
.end method

.method nObjDestroy(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnObjDestroy(JJ)V

    :cond_0
    return-void
.end method

.method declared-synchronized nSamplerCreate(IIIIIF)J
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnSamplerCreate(JIIIIIF)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptBindAllocation(JJIZ)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    if-eqz p6, :cond_0

    .line 3
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-wide v1, v0

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    move v8, p6

    .line 4
    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnScriptBindAllocation(JJJIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptFieldIDCreate(JIZ)J
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    if-eqz p4, :cond_0

    .line 3
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-wide v1, v0

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    .line 4
    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->rsnScriptFieldIDCreate(JJIZ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptForEach(JIJJ[BZ)V
    .locals 16

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    if-nez p8, :cond_0

    .line 2
    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    iget-wide v4, v15, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move/from16 v13, p9

    invoke-virtual/range {v1 .. v13}, Landroidx/renderscript/RenderScript;->rsnScriptForEach(JJJIJJZ)V

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    iget-wide v4, v15, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move-object/from16 v13, p8

    move/from16 v14, p9

    invoke-virtual/range {v1 .. v14}, Landroidx/renderscript/RenderScript;->rsnScriptForEach(JJJIJJ[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptForEachClipped(JIJJ[BIIIIIIZ)V
    .locals 21

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    if-nez p8, :cond_0

    .line 2
    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    iget-wide v4, v15, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v18, p14

    move/from16 v19, p15

    invoke-virtual/range {v1 .. v19}, Landroidx/renderscript/RenderScript;->rsnScriptForEachClipped(JJJIJJIIIIIIZ)V

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    iget-wide v4, v15, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move-object/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move/from16 v19, p14

    move/from16 v20, p15

    invoke-virtual/range {v1 .. v20}, Landroidx/renderscript/RenderScript;->rsnScriptForEachClipped(JJJIJJ[BIIIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptGroup2Execute(J)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnScriptGroup2Execute(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptGroupCreate([J[J[J[J[J)J
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnScriptGroupCreate(J[J[J[J[J[J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptGroupExecute(J)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnScriptGroupExecute(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptGroupSetInput(JJJ)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnScriptGroupSetInput(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptGroupSetOutput(JJJ)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnScriptGroupSetOutput(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptIntrinsicBLAS_BNNM(JIIIJIJIJIIZ)V
    .locals 22

    move-object/from16 v14, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v14, Landroidx/renderscript/RenderScript;->mContext:J

    iget-wide v4, v14, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-wide/from16 v11, p6

    move/from16 v13, p8

    move-wide/from16 v14, p9

    move/from16 v16, p11

    move-wide/from16 v17, p12

    move/from16 v19, p14

    move/from16 v20, p15

    move/from16 v21, p16

    invoke-virtual/range {v1 .. v21}, Landroidx/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_BNNM(JJJIIIJIJIJIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V
    .locals 32

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    iget-wide v4, v15, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move-wide/from16 v19, p14

    move-wide/from16 v21, p16

    move/from16 v23, p18

    move/from16 v24, p19

    move-wide/from16 v25, p20

    move/from16 v27, p22

    move/from16 v28, p23

    move/from16 v29, p24

    move/from16 v30, p25

    move/from16 v31, p26

    invoke-virtual/range {v1 .. v31}, Landroidx/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Complex(JJJIIIIIIIIIFFJJFFJIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V
    .locals 32

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    iget-wide v4, v15, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move-wide/from16 v17, p12

    move-wide/from16 v19, p14

    move-wide/from16 v21, p16

    move-wide/from16 v23, p18

    move-wide/from16 v25, p20

    move/from16 v27, p22

    move/from16 v28, p23

    move/from16 v29, p24

    move/from16 v30, p25

    move/from16 v31, p26

    invoke-virtual/range {v1 .. v31}, Landroidx/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Double(JJJIIIIIIIIIDJJDJIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V
    .locals 30

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    iget-wide v4, v15, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move-wide/from16 v18, p13

    move-wide/from16 v20, p15

    move/from16 v22, p17

    move-wide/from16 v23, p18

    move/from16 v25, p20

    move/from16 v26, p21

    move/from16 v27, p22

    move/from16 v28, p23

    move/from16 v29, p24

    invoke-virtual/range {v1 .. v29}, Landroidx/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Single(JJJIIIIIIIIIFJJFJIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V
    .locals 36

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    iget-wide v4, v15, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move-wide/from16 v17, p12

    move-wide/from16 v19, p14

    move-wide/from16 v21, p16

    move-wide/from16 v23, p18

    move-wide/from16 v25, p20

    move-wide/from16 v27, p22

    move-wide/from16 v29, p24

    move/from16 v31, p26

    move/from16 v32, p27

    move/from16 v33, p28

    move/from16 v34, p29

    move/from16 v35, p30

    invoke-virtual/range {v1 .. v35}, Landroidx/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Z(JJJIIIIIIIIIDDJJDDJIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptIntrinsicCreate(IJZ)J
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    if-eqz p4, :cond_5

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 3
    iget-boolean v0, p0, Landroidx/renderscript/RenderScript;->mIncLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "RSSupport"

    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0x17

    .line 5
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/libRSSupport.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/RenderScript;->nIncLoadSO(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/renderscript/RenderScript;->mIncLoaded:Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string p2, "Error loading libRSSupport library for Incremental Intrinsic Support"

    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    const-string p2, "RenderScript_jni"

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error loading RS Compat library for Incremental Intrinsic Support: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance p2, Landroidx/renderscript/RSRuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error loading RS Compat library for Incremental Intrinsic Support: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_1
    :goto_0
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncDev:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 11
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->nIncDeviceCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncDev:J

    .line 12
    :cond_2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 13
    iget-wide v6, p0, Landroidx/renderscript/RenderScript;->mIncDev:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroidx/renderscript/RenderScript;->nIncContextCreate(JIII)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 14
    :cond_3
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->rsnScriptIntrinsicCreate(JIJZ)J

    move-result-wide p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide p1

    :cond_4
    :try_start_3
    const-string p1, "RenderScript_jni"

    const-string p2, "Incremental Intrinsics are not supported, please change targetSdkVersion to >= 21"

    .line 15
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string p2, "Incremental Intrinsics are not supported before Lollipop (API 21)"

    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_5
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->rsnScriptIntrinsicCreate(JIJZ)J

    move-result-wide p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptInvoke(JIZ)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    if-eqz p4, :cond_0

    .line 3
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-wide v1, v0

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    .line 4
    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->rsnScriptInvoke(JJIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptInvokeIDCreate(JI)J
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnScriptInvokeIDCreate(JJI)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptInvokeV(JI[BZ)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    if-eqz p5, :cond_0

    .line 3
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-wide v1, v0

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    .line 4
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnScriptInvokeV(JJI[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptKernelIDCreate(JIIZ)J
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    if-eqz p5, :cond_0

    .line 3
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-wide v1, v0

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    .line 4
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnScriptKernelIDCreate(JJIIZ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptSetTimeZone(J[BZ)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    if-eqz p4, :cond_0

    .line 3
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-wide v1, v0

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    .line 4
    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->rsnScriptSetTimeZone(JJ[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptSetVarD(JIDZ)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    if-eqz p6, :cond_0

    .line 3
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-wide v1, v0

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-wide v6, p4

    move v8, p6

    .line 4
    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnScriptSetVarD(JJIDZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptSetVarF(JIFZ)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    if-eqz p5, :cond_0

    .line 3
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-wide v1, v0

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    .line 4
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnScriptSetVarF(JJIFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptSetVarI(JIIZ)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    if-eqz p5, :cond_0

    .line 3
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-wide v1, v0

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    .line 4
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnScriptSetVarI(JJIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptSetVarJ(JIJZ)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    if-eqz p6, :cond_0

    .line 3
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-wide v1, v0

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-wide v6, p4

    move v8, p6

    .line 4
    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnScriptSetVarJ(JJIJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptSetVarObj(JIJZ)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    if-eqz p6, :cond_0

    .line 3
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-wide v1, v0

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-wide v6, p4

    move v8, p6

    .line 4
    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnScriptSetVarObj(JJIJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptSetVarV(JI[BZ)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    if-eqz p5, :cond_0

    .line 3
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-wide v1, v0

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    .line 4
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnScriptSetVarV(JJI[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized nScriptSetVarVE(JI[BJ[IZ)V
    .locals 13

    move-object v12, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v0, v12, Landroidx/renderscript/RenderScript;->mContext:J

    if-eqz p8, :cond_0

    .line 3
    iget-wide v0, v12, Landroidx/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-wide v2, v0

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    .line 4
    invoke-virtual/range {v1 .. v11}, Landroidx/renderscript/RenderScript;->rsnScriptSetVarVE(JJI[BJ[IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nTypeCreate(JIIIZZI)J
    .locals 13

    move-object v12, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v12, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Landroidx/renderscript/RenderScript;->rsnTypeCreate(JJIIIZZI)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nTypeGetNativeData(J[J)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnTypeGetNativeData(JJ[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method native rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J
.end method

.method native rsnAllocationCreateBitmapRef(JJLandroid/graphics/Bitmap;)J
.end method

.method native rsnAllocationCreateFromAssetStream(JIII)J
.end method

.method native rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method native rsnAllocationCreateTyped(JJIIJ)J
.end method

.method native rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method native rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationData2D(JJIIIIIIJIIII)V
.end method

.method native rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationData3D(JJIIIIIIIJIIII)V
.end method

.method native rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationElementData1D(JJIII[BI)V
.end method

.method native rsnAllocationGenerateMipmaps(JJ)V
.end method

.method native rsnAllocationGetType(JJ)J
.end method

.method native rsnAllocationIoReceive(JJ)V
.end method

.method native rsnAllocationIoSend(JJ)V
.end method

.method native rsnAllocationRead(JJLjava/lang/Object;IIZ)V
.end method

.method native rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationResize1D(JJI)V
.end method

.method native rsnAllocationResize2D(JJII)V
.end method

.method native rsnAllocationSetSurface(JJLandroid/view/Surface;)V
.end method

.method native rsnAllocationSyncAll(JJI)V
.end method

.method native rsnClosureCreate(JJJ[J[J[I[J[J)J
.end method

.method native rsnClosureSetArg(JJIJI)V
.end method

.method native rsnClosureSetGlobal(JJJJI)V
.end method

.method native rsnContextCreate(JIIILjava/lang/String;)J
.end method

.method native rsnContextDestroy(J)V
.end method

.method native rsnContextDump(JI)V
.end method

.method native rsnContextFinish(J)V
.end method

.method native rsnContextSendMessage(JI[I)V
.end method

.method native rsnContextSetPriority(JI)V
.end method

.method native rsnElementCreate(JJIZI)J
.end method

.method native rsnElementCreate2(J[J[Ljava/lang/String;[I)J
.end method

.method native rsnElementGetNativeData(JJ[I)V
.end method

.method native rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
.end method

.method native rsnIncAllocationCreateTyped(JJJJ)J
.end method

.method native rsnIncContextCreate(JIII)J
.end method

.method native rsnIncContextDestroy(J)V
.end method

.method native rsnIncContextFinish(J)V
.end method

.method native rsnIncElementCreate(JJIZI)J
.end method

.method native rsnIncObjDestroy(JJ)V
.end method

.method native rsnIncTypeCreate(JJIIIZZI)J
.end method

.method native rsnInvokeClosureCreate(JJ[B[J[J[I)J
.end method

.method native rsnObjDestroy(JJ)V
.end method

.method native rsnSamplerCreate(JIIIIIF)J
.end method

.method native rsnScriptBindAllocation(JJJIZ)V
.end method

.method native rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J
.end method

.method native rsnScriptFieldIDCreate(JJIZ)J
.end method

.method native rsnScriptForEach(JJJIJJZ)V
.end method

.method native rsnScriptForEach(JJJIJJ[BZ)V
.end method

.method native rsnScriptForEachClipped(JJJIJJIIIIIIZ)V
.end method

.method native rsnScriptForEachClipped(JJJIJJ[BIIIIIIZ)V
.end method

.method native rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J
.end method

.method native rsnScriptGroup2Execute(JJ)V
.end method

.method native rsnScriptGroupCreate(J[J[J[J[J[J)J
.end method

.method native rsnScriptGroupExecute(JJ)V
.end method

.method native rsnScriptGroupSetInput(JJJJ)V
.end method

.method native rsnScriptGroupSetOutput(JJJJ)V
.end method

.method native rsnScriptIntrinsicBLAS_BNNM(JJJIIIJIJIJIIZ)V
.end method

.method native rsnScriptIntrinsicBLAS_Complex(JJJIIIIIIIIIFFJJFFJIIIIZ)V
.end method

.method native rsnScriptIntrinsicBLAS_Double(JJJIIIIIIIIIDJJDJIIIIZ)V
.end method

.method native rsnScriptIntrinsicBLAS_Single(JJJIIIIIIIIIFJJFJIIIIZ)V
.end method

.method native rsnScriptIntrinsicBLAS_Z(JJJIIIIIIIIIDDJJDDJIIIIZ)V
.end method

.method native rsnScriptIntrinsicCreate(JIJZ)J
.end method

.method native rsnScriptInvoke(JJIZ)V
.end method

.method native rsnScriptInvokeIDCreate(JJI)J
.end method

.method native rsnScriptInvokeV(JJI[BZ)V
.end method

.method native rsnScriptKernelIDCreate(JJIIZ)J
.end method

.method native rsnScriptSetTimeZone(JJ[BZ)V
.end method

.method native rsnScriptSetVarD(JJIDZ)V
.end method

.method native rsnScriptSetVarF(JJIFZ)V
.end method

.method native rsnScriptSetVarI(JJIIZ)V
.end method

.method native rsnScriptSetVarJ(JJIJZ)V
.end method

.method native rsnScriptSetVarObj(JJIJZ)V
.end method

.method native rsnScriptSetVarV(JJI[BZ)V
.end method

.method native rsnScriptSetVarVE(JJI[BJ[IZ)V
.end method

.method native rsnTypeCreate(JJIIIZZI)J
.end method

.method native rsnTypeGetNativeData(JJ[J)V
.end method

.method safeID(Landroidx/renderscript/BaseObj;)J
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sendMessage(I[I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/renderscript/RenderScript;->nContextSendMessage(I[I)V

    return-void
.end method

.method public setErrorHandler(Landroidx/renderscript/RenderScript$RSErrorHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/renderscript/RenderScript;->mErrorCallback:Landroidx/renderscript/RenderScript$RSErrorHandler;

    return-void
.end method

.method public setMessageHandler(Landroidx/renderscript/RenderScript$RSMessageHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/renderscript/RenderScript;->mMessageCallback:Landroidx/renderscript/RenderScript$RSMessageHandler;

    return-void
.end method

.method public setPriority(Landroidx/renderscript/RenderScript$Priority;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    iget p1, p1, Landroidx/renderscript/RenderScript$Priority;->mID:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/RenderScript;->nContextSetPriority(I)V

    return-void
.end method

.method usingIO()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/renderscript/RenderScript;->useIOlib:Z

    return v0
.end method

.method validate()V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    const-string v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
