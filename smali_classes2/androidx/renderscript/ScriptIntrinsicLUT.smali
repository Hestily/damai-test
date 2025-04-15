.class public Landroidx/renderscript/ScriptIntrinsicLUT;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "Taobao"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private final mCache:[B

.field private mDirty:Z

.field private final mMatrix:Landroidx/renderscript/Matrix4f;

.field private mTables:Landroidx/renderscript/Allocation;


# direct methods
.method protected constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/ScriptIntrinsic;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 2
    new-instance p1, Landroidx/renderscript/Matrix4f;

    invoke-direct {p1}, Landroidx/renderscript/Matrix4f;-><init>()V

    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mMatrix:Landroidx/renderscript/Matrix4f;

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 3
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mCache:[B

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicLUT;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->isUseNative()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    .line 2
    invoke-virtual {p1, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4, v0}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    move-result-wide v2

    .line 3
    new-instance p1, Landroidx/renderscript/ScriptIntrinsicLUT;

    invoke-direct {p1, v2, v3, p0}, Landroidx/renderscript/ScriptIntrinsicLUT;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 4
    invoke-virtual {p1, v0}, Landroidx/renderscript/Script;->setIncSupp(Z)V

    .line 5
    invoke-static {p0}, Landroidx/renderscript/Element;->U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v0

    const/16 v2, 0x400

    invoke-static {p0, v0, v2}, Landroidx/renderscript/Allocation;->createSized(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    iput-object p0, p1, Landroidx/renderscript/ScriptIntrinsicLUT;->mTables:Landroidx/renderscript/Allocation;

    const/4 p0, 0x0

    :goto_1
    const/16 v0, 0x100

    if-ge p0, v0, :cond_1

    .line 6
    iget-object v0, p1, Landroidx/renderscript/ScriptIntrinsicLUT;->mCache:[B

    int-to-byte v2, p0

    aput-byte v2, v0, p0

    add-int/lit16 v3, p0, 0x100

    .line 7
    aput-byte v2, v0, v3

    add-int/lit16 v3, p0, 0x200

    .line 8
    aput-byte v2, v0, v3

    add-int/lit16 v3, p0, 0x300

    .line 9
    aput-byte v2, v0, v3

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget-object p0, p1, Landroidx/renderscript/ScriptIntrinsicLUT;->mTables:Landroidx/renderscript/Allocation;

    invoke-virtual {p1, v1, p0}, Landroidx/renderscript/Script;->setVar(ILandroidx/renderscript/BaseObj;)V

    return-object p1
.end method

.method private validate(II)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Value out of range (0-255)."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Index out of range (0-255)."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public forEach(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 3
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mTables:Landroidx/renderscript/Allocation;

    iget-object v2, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mCache:[B

    invoke-virtual {v0, v2}, Landroidx/renderscript/Allocation;->copyFromUnchecked([B)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v1, p1, p2, v0}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    return-void
.end method

.method public getKernelID()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setAlpha(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 2
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 p1, p1, 0x300

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method

.method public setBlue(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 2
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 p1, p1, 0x200

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method

.method public setGreen(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 2
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 p1, p1, 0x100

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method

.method public setRed(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 2
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mCache:[B

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method
