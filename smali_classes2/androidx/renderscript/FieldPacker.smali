.class public Landroidx/renderscript/FieldPacker;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private mAlignment:Ljava/util/BitSet;

.field private mData:[B

.field private mLen:I

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 3
    iput p1, p0, Landroidx/renderscript/FieldPacker;->mLen:I

    .line 4
    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    .line 5
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Landroidx/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    array-length v0, p1

    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 8
    array-length v0, p1

    iput v0, p0, Landroidx/renderscript/FieldPacker;->mLen:I

    .line 9
    iput-object p1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    .line 10
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Landroidx/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    return-void
.end method

.method private addSafely(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Landroidx/renderscript/FieldPacker;->addToPack(Landroidx/renderscript/FieldPacker;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 4
    iget v1, p0, Landroidx/renderscript/FieldPacker;->mLen:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Landroidx/renderscript/FieldPacker;->resize(I)Z

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    return-void
.end method

.method private static addToPack(Landroidx/renderscript/FieldPacker;Ljava/lang/Object;)V
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addBoolean(Z)V

    return-void

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    return-void

    .line 5
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    return-void

    .line 7
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    return-void

    .line 9
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 10
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    return-void

    .line 11
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 12
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    return-void

    .line 13
    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 14
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    return-void

    .line 15
    :cond_6
    instance-of v0, p1, Landroidx/renderscript/Byte2;

    if-eqz v0, :cond_7

    .line 16
    check-cast p1, Landroidx/renderscript/Byte2;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(Landroidx/renderscript/Byte2;)V

    return-void

    .line 17
    :cond_7
    instance-of v0, p1, Landroidx/renderscript/Byte3;

    if-eqz v0, :cond_8

    .line 18
    check-cast p1, Landroidx/renderscript/Byte3;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(Landroidx/renderscript/Byte3;)V

    return-void

    .line 19
    :cond_8
    instance-of v0, p1, Landroidx/renderscript/Byte4;

    if-eqz v0, :cond_9

    .line 20
    check-cast p1, Landroidx/renderscript/Byte4;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(Landroidx/renderscript/Byte4;)V

    return-void

    .line 21
    :cond_9
    instance-of v0, p1, Landroidx/renderscript/Short2;

    if-eqz v0, :cond_a

    .line 22
    check-cast p1, Landroidx/renderscript/Short2;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI16(Landroidx/renderscript/Short2;)V

    return-void

    .line 23
    :cond_a
    instance-of v0, p1, Landroidx/renderscript/Short3;

    if-eqz v0, :cond_b

    .line 24
    check-cast p1, Landroidx/renderscript/Short3;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI16(Landroidx/renderscript/Short3;)V

    return-void

    .line 25
    :cond_b
    instance-of v0, p1, Landroidx/renderscript/Short4;

    if-eqz v0, :cond_c

    .line 26
    check-cast p1, Landroidx/renderscript/Short4;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI16(Landroidx/renderscript/Short4;)V

    return-void

    .line 27
    :cond_c
    instance-of v0, p1, Landroidx/renderscript/Int2;

    if-eqz v0, :cond_d

    .line 28
    check-cast p1, Landroidx/renderscript/Int2;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(Landroidx/renderscript/Int2;)V

    return-void

    .line 29
    :cond_d
    instance-of v0, p1, Landroidx/renderscript/Int3;

    if-eqz v0, :cond_e

    .line 30
    check-cast p1, Landroidx/renderscript/Int3;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(Landroidx/renderscript/Int3;)V

    return-void

    .line 31
    :cond_e
    instance-of v0, p1, Landroidx/renderscript/Int4;

    if-eqz v0, :cond_f

    .line 32
    check-cast p1, Landroidx/renderscript/Int4;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(Landroidx/renderscript/Int4;)V

    return-void

    .line 33
    :cond_f
    instance-of v0, p1, Landroidx/renderscript/Long2;

    if-eqz v0, :cond_10

    .line 34
    check-cast p1, Landroidx/renderscript/Long2;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI64(Landroidx/renderscript/Long2;)V

    return-void

    .line 35
    :cond_10
    instance-of v0, p1, Landroidx/renderscript/Long3;

    if-eqz v0, :cond_11

    .line 36
    check-cast p1, Landroidx/renderscript/Long3;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI64(Landroidx/renderscript/Long3;)V

    return-void

    .line 37
    :cond_11
    instance-of v0, p1, Landroidx/renderscript/Long4;

    if-eqz v0, :cond_12

    .line 38
    check-cast p1, Landroidx/renderscript/Long4;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI64(Landroidx/renderscript/Long4;)V

    return-void

    .line 39
    :cond_12
    instance-of v0, p1, Landroidx/renderscript/Float2;

    if-eqz v0, :cond_13

    .line 40
    check-cast p1, Landroidx/renderscript/Float2;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF32(Landroidx/renderscript/Float2;)V

    return-void

    .line 41
    :cond_13
    instance-of v0, p1, Landroidx/renderscript/Float3;

    if-eqz v0, :cond_14

    .line 42
    check-cast p1, Landroidx/renderscript/Float3;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF32(Landroidx/renderscript/Float3;)V

    return-void

    .line 43
    :cond_14
    instance-of v0, p1, Landroidx/renderscript/Float4;

    if-eqz v0, :cond_15

    .line 44
    check-cast p1, Landroidx/renderscript/Float4;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF32(Landroidx/renderscript/Float4;)V

    return-void

    .line 45
    :cond_15
    instance-of v0, p1, Landroidx/renderscript/Double2;

    if-eqz v0, :cond_16

    .line 46
    check-cast p1, Landroidx/renderscript/Double2;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF64(Landroidx/renderscript/Double2;)V

    return-void

    .line 47
    :cond_16
    instance-of v0, p1, Landroidx/renderscript/Double3;

    if-eqz v0, :cond_17

    .line 48
    check-cast p1, Landroidx/renderscript/Double3;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF64(Landroidx/renderscript/Double3;)V

    return-void

    .line 49
    :cond_17
    instance-of v0, p1, Landroidx/renderscript/Double4;

    if-eqz v0, :cond_18

    .line 50
    check-cast p1, Landroidx/renderscript/Double4;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF64(Landroidx/renderscript/Double4;)V

    return-void

    .line 51
    :cond_18
    instance-of v0, p1, Landroidx/renderscript/Matrix2f;

    if-eqz v0, :cond_19

    .line 52
    check-cast p1, Landroidx/renderscript/Matrix2f;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addMatrix(Landroidx/renderscript/Matrix2f;)V

    return-void

    .line 53
    :cond_19
    instance-of v0, p1, Landroidx/renderscript/Matrix3f;

    if-eqz v0, :cond_1a

    .line 54
    check-cast p1, Landroidx/renderscript/Matrix3f;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addMatrix(Landroidx/renderscript/Matrix3f;)V

    return-void

    .line 55
    :cond_1a
    instance-of v0, p1, Landroidx/renderscript/Matrix4f;

    if-eqz v0, :cond_1b

    .line 56
    check-cast p1, Landroidx/renderscript/Matrix4f;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addMatrix(Landroidx/renderscript/Matrix4f;)V

    return-void

    .line 57
    :cond_1b
    instance-of v0, p1, Landroidx/renderscript/BaseObj;

    if-eqz v0, :cond_1c

    .line 58
    check-cast p1, Landroidx/renderscript/BaseObj;

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addObj(Landroidx/renderscript/BaseObj;)V

    :cond_1c
    return-void
.end method

.method static createFieldPack([Ljava/lang/Object;)Landroidx/renderscript/FieldPacker;
    .locals 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p0, v2

    .line 2
    invoke-static {v4}, Landroidx/renderscript/FieldPacker;->getPackedSize(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroidx/renderscript/FieldPacker;

    invoke-direct {v0, v3}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    .line 4
    array-length v2, p0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 5
    invoke-static {v0, v3}, Landroidx/renderscript/FieldPacker;->addToPack(Landroidx/renderscript/FieldPacker;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method static createFromArray([Ljava/lang/Object;)Landroidx/renderscript/FieldPacker;
    .locals 4

    .line 1
    new-instance v0, Landroidx/renderscript/FieldPacker;

    sget v1, Landroidx/renderscript/RenderScript;->sPointerSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 3
    invoke-direct {v0, v3}, Landroidx/renderscript/FieldPacker;->addSafely(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p0, v0, Landroidx/renderscript/FieldPacker;->mPos:I

    invoke-direct {v0, p0}, Landroidx/renderscript/FieldPacker;->resize(I)Z

    return-object v0
.end method

.method private static getPackedSize(Ljava/lang/Object;)I
    .locals 7

    .line 1
    instance-of v0, p0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    instance-of v0, p0, Ljava/lang/Short;

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v2, 0x4

    if-eqz v0, :cond_3

    return v2

    .line 5
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    const/16 v3, 0x8

    if-eqz v0, :cond_4

    return v3

    .line 6
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    return v2

    .line 7
    :cond_5
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_6

    return v3

    .line 8
    :cond_6
    instance-of v0, p0, Landroidx/renderscript/Byte2;

    if-eqz v0, :cond_7

    return v1

    .line 9
    :cond_7
    instance-of v0, p0, Landroidx/renderscript/Byte3;

    if-eqz v0, :cond_8

    const/4 p0, 0x3

    return p0

    .line 10
    :cond_8
    instance-of v0, p0, Landroidx/renderscript/Byte4;

    if-eqz v0, :cond_9

    return v2

    .line 11
    :cond_9
    instance-of v0, p0, Landroidx/renderscript/Short2;

    if-eqz v0, :cond_a

    return v2

    .line 12
    :cond_a
    instance-of v0, p0, Landroidx/renderscript/Short3;

    if-eqz v0, :cond_b

    const/4 p0, 0x6

    return p0

    .line 13
    :cond_b
    instance-of v0, p0, Landroidx/renderscript/Short4;

    if-eqz v0, :cond_c

    return v3

    .line 14
    :cond_c
    instance-of v0, p0, Landroidx/renderscript/Int2;

    if-eqz v0, :cond_d

    return v3

    .line 15
    :cond_d
    instance-of v0, p0, Landroidx/renderscript/Int3;

    const/16 v1, 0xc

    if-eqz v0, :cond_e

    return v1

    .line 16
    :cond_e
    instance-of v0, p0, Landroidx/renderscript/Int4;

    const/16 v4, 0x10

    if-eqz v0, :cond_f

    return v4

    .line 17
    :cond_f
    instance-of v0, p0, Landroidx/renderscript/Long2;

    if-eqz v0, :cond_10

    return v4

    .line 18
    :cond_10
    instance-of v0, p0, Landroidx/renderscript/Long3;

    const/16 v5, 0x18

    if-eqz v0, :cond_11

    return v5

    .line 19
    :cond_11
    instance-of v0, p0, Landroidx/renderscript/Long4;

    const/16 v6, 0x20

    if-eqz v0, :cond_12

    return v6

    .line 20
    :cond_12
    instance-of v0, p0, Landroidx/renderscript/Float2;

    if-eqz v0, :cond_13

    return v3

    .line 21
    :cond_13
    instance-of v0, p0, Landroidx/renderscript/Float3;

    if-eqz v0, :cond_14

    return v1

    .line 22
    :cond_14
    instance-of v0, p0, Landroidx/renderscript/Float4;

    if-eqz v0, :cond_15

    return v4

    .line 23
    :cond_15
    instance-of v0, p0, Landroidx/renderscript/Double2;

    if-eqz v0, :cond_16

    return v4

    .line 24
    :cond_16
    instance-of v0, p0, Landroidx/renderscript/Double3;

    if-eqz v0, :cond_17

    return v5

    .line 25
    :cond_17
    instance-of v0, p0, Landroidx/renderscript/Double4;

    if-eqz v0, :cond_18

    return v6

    .line 26
    :cond_18
    instance-of v0, p0, Landroidx/renderscript/Matrix2f;

    if-eqz v0, :cond_19

    return v4

    .line 27
    :cond_19
    instance-of v0, p0, Landroidx/renderscript/Matrix3f;

    if-eqz v0, :cond_1a

    const/16 p0, 0x24

    return p0

    .line 28
    :cond_1a
    instance-of v0, p0, Landroidx/renderscript/Matrix4f;

    if-eqz v0, :cond_1b

    const/16 p0, 0x40

    return p0

    .line 29
    :cond_1b
    instance-of p0, p0, Landroidx/renderscript/BaseObj;

    if-eqz p0, :cond_1d

    .line 30
    sget p0, Landroidx/renderscript/RenderScript;->sPointerSize:I

    if-ne p0, v3, :cond_1c

    return v6

    :cond_1c
    return v2

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method private resize(I)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/renderscript/FieldPacker;->mLen:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-array v0, p1, [B

    .line 3
    iget-object v2, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v3, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    .line 5
    iput p1, p0, Landroidx/renderscript/FieldPacker;->mLen:I

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public addBoolean(Z)V
    .locals 0

    int-to-byte p1, p1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addF32(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addF32(Landroidx/renderscript/Float2;)V
    .locals 1

    .line 2
    iget v0, p1, Landroidx/renderscript/Float2;->x:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 3
    iget p1, p1, Landroidx/renderscript/Float2;->y:F

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    return-void
.end method

.method public addF32(Landroidx/renderscript/Float3;)V
    .locals 1

    .line 4
    iget v0, p1, Landroidx/renderscript/Float3;->x:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 5
    iget v0, p1, Landroidx/renderscript/Float3;->y:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 6
    iget p1, p1, Landroidx/renderscript/Float3;->z:F

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    return-void
.end method

.method public addF32(Landroidx/renderscript/Float4;)V
    .locals 1

    .line 7
    iget v0, p1, Landroidx/renderscript/Float4;->x:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 8
    iget v0, p1, Landroidx/renderscript/Float4;->y:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 9
    iget v0, p1, Landroidx/renderscript/Float4;->z:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 10
    iget p1, p1, Landroidx/renderscript/Float4;->w:F

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    return-void
.end method

.method public addF64(D)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addF64(Landroidx/renderscript/Double2;)V
    .locals 2

    .line 2
    iget-wide v0, p1, Landroidx/renderscript/Double2;->x:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 3
    iget-wide v0, p1, Landroidx/renderscript/Double2;->y:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    return-void
.end method

.method public addF64(Landroidx/renderscript/Double3;)V
    .locals 2

    .line 4
    iget-wide v0, p1, Landroidx/renderscript/Double3;->x:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 5
    iget-wide v0, p1, Landroidx/renderscript/Double3;->y:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 6
    iget-wide v0, p1, Landroidx/renderscript/Double3;->z:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    return-void
.end method

.method public addF64(Landroidx/renderscript/Double4;)V
    .locals 2

    .line 7
    iget-wide v0, p1, Landroidx/renderscript/Double4;->x:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 8
    iget-wide v0, p1, Landroidx/renderscript/Double4;->y:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 9
    iget-wide v0, p1, Landroidx/renderscript/Double4;->z:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 10
    iget-wide v0, p1, Landroidx/renderscript/Double4;->w:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    return-void
.end method

.method public addI16(Landroidx/renderscript/Short2;)V
    .locals 1

    .line 4
    iget-short v0, p1, Landroidx/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 5
    iget-short p1, p1, Landroidx/renderscript/Short2;->y:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    return-void
.end method

.method public addI16(Landroidx/renderscript/Short3;)V
    .locals 1

    .line 6
    iget-short v0, p1, Landroidx/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 7
    iget-short v0, p1, Landroidx/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 8
    iget-short p1, p1, Landroidx/renderscript/Short3;->z:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    return-void
.end method

.method public addI16(Landroidx/renderscript/Short4;)V
    .locals 1

    .line 9
    iget-short v0, p1, Landroidx/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 10
    iget-short v0, p1, Landroidx/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 11
    iget-short v0, p1, Landroidx/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 12
    iget-short p1, p1, Landroidx/renderscript/Short4;->w:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    return-void
.end method

.method public addI16(S)V
    .locals 4

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    .line 2
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 3
    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public addI32(I)V
    .locals 4

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    .line 2
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 3
    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 4
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 5
    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public addI32(Landroidx/renderscript/Int2;)V
    .locals 1

    .line 6
    iget v0, p1, Landroidx/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 7
    iget p1, p1, Landroidx/renderscript/Int2;->y:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addI32(Landroidx/renderscript/Int3;)V
    .locals 1

    .line 8
    iget v0, p1, Landroidx/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 9
    iget v0, p1, Landroidx/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 10
    iget p1, p1, Landroidx/renderscript/Int3;->z:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addI32(Landroidx/renderscript/Int4;)V
    .locals 1

    .line 11
    iget v0, p1, Landroidx/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 12
    iget v0, p1, Landroidx/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 13
    iget v0, p1, Landroidx/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 14
    iget p1, p1, Landroidx/renderscript/Int4;->w:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addI64(J)V
    .locals 8

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    .line 2
    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const-wide/16 v4, 0xff

    and-long v6, p1, v4

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 3
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    shr-long v6, p1, v0

    and-long/2addr v6, v4

    long-to-int v0, v6

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    add-int/lit8 v0, v2, 0x1

    .line 4
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x10

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    .line 5
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x18

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    .line 6
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x20

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    .line 7
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x28

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    .line 8
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x30

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    .line 9
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long/2addr p1, v2

    and-long/2addr p1, v4

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v1, v0

    return-void
.end method

.method public addI64(Landroidx/renderscript/Long2;)V
    .locals 2

    .line 10
    iget-wide v0, p1, Landroidx/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 11
    iget-wide v0, p1, Landroidx/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addI64(Landroidx/renderscript/Long3;)V
    .locals 2

    .line 12
    iget-wide v0, p1, Landroidx/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 13
    iget-wide v0, p1, Landroidx/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 14
    iget-wide v0, p1, Landroidx/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addI64(Landroidx/renderscript/Long4;)V
    .locals 2

    .line 15
    iget-wide v0, p1, Landroidx/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 16
    iget-wide v0, p1, Landroidx/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 17
    iget-wide v0, p1, Landroidx/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 18
    iget-wide v0, p1, Landroidx/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addI8(B)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public addI8(Landroidx/renderscript/Byte2;)V
    .locals 1

    .line 2
    iget-byte v0, p1, Landroidx/renderscript/Byte2;->x:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 3
    iget-byte p1, p1, Landroidx/renderscript/Byte2;->y:B

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addI8(Landroidx/renderscript/Byte3;)V
    .locals 1

    .line 4
    iget-byte v0, p1, Landroidx/renderscript/Byte3;->x:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 5
    iget-byte v0, p1, Landroidx/renderscript/Byte3;->y:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 6
    iget-byte p1, p1, Landroidx/renderscript/Byte3;->z:B

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addI8(Landroidx/renderscript/Byte4;)V
    .locals 1

    .line 7
    iget-byte v0, p1, Landroidx/renderscript/Byte4;->x:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 8
    iget-byte v0, p1, Landroidx/renderscript/Byte4;->y:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 9
    iget-byte v0, p1, Landroidx/renderscript/Byte4;->z:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 10
    iget-byte p1, p1, Landroidx/renderscript/Byte4;->w:B

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addMatrix(Landroidx/renderscript/Matrix2f;)V
    .locals 3

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p1, Landroidx/renderscript/Matrix2f;->mMat:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 6
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addMatrix(Landroidx/renderscript/Matrix3f;)V
    .locals 3

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p1, Landroidx/renderscript/Matrix3f;->mMat:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addMatrix(Landroidx/renderscript/Matrix4f;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p1, Landroidx/renderscript/Matrix4f;->mMat:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addObj(Landroidx/renderscript/BaseObj;)V
    .locals 5

    const/16 v0, 0x8

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    sget v3, Landroidx/renderscript/RenderScript;->sPointerSize:I

    const/4 v4, 0x0

    if-ne v3, v0, :cond_0

    .line 2
    invoke-virtual {p1, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 3
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 4
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 5
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0

    .line 7
    :cond_1
    sget p1, Landroidx/renderscript/RenderScript;->sPointerSize:I

    if-ne p1, v0, :cond_2

    .line 8
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 9
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 10
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 11
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    :goto_0
    return-void
.end method

.method public addU16(I)V
    .locals 4

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    .line 2
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 3
    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldPacker.addU16( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rs"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Saving value out of range for type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addU16(Landroidx/renderscript/Int2;)V
    .locals 1

    .line 6
    iget v0, p1, Landroidx/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 7
    iget p1, p1, Landroidx/renderscript/Int2;->y:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    return-void
.end method

.method public addU16(Landroidx/renderscript/Int3;)V
    .locals 1

    .line 8
    iget v0, p1, Landroidx/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 9
    iget v0, p1, Landroidx/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 10
    iget p1, p1, Landroidx/renderscript/Int3;->z:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    return-void
.end method

.method public addU16(Landroidx/renderscript/Int4;)V
    .locals 1

    .line 11
    iget v0, p1, Landroidx/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 12
    iget v0, p1, Landroidx/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 13
    iget v0, p1, Landroidx/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 14
    iget p1, p1, Landroidx/renderscript/Int4;->w:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    return-void
.end method

.method public addU32(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    .line 2
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 3
    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v5, 0x8

    shr-long v5, p1, v5

    and-long/2addr v5, v3

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 4
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v5, 0x10

    shr-long v5, p1, v5

    and-long/2addr v5, v3

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 5
    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v1, 0x18

    shr-long/2addr p1, v1

    and-long/2addr p1, v3

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v2

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldPacker.addU32( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "rs"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Saving value out of range for type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addU32(Landroidx/renderscript/Long2;)V
    .locals 2

    .line 8
    iget-wide v0, p1, Landroidx/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 9
    iget-wide v0, p1, Landroidx/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    return-void
.end method

.method public addU32(Landroidx/renderscript/Long3;)V
    .locals 2

    .line 10
    iget-wide v0, p1, Landroidx/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 11
    iget-wide v0, p1, Landroidx/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 12
    iget-wide v0, p1, Landroidx/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    return-void
.end method

.method public addU32(Landroidx/renderscript/Long4;)V
    .locals 2

    .line 13
    iget-wide v0, p1, Landroidx/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 14
    iget-wide v0, p1, Landroidx/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 15
    iget-wide v0, p1, Landroidx/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 16
    iget-wide v0, p1, Landroidx/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    return-void
.end method

.method public addU64(J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    .line 2
    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const-wide/16 v4, 0xff

    and-long v6, p1, v4

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 3
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    shr-long v6, p1, v0

    and-long/2addr v6, v4

    long-to-int v0, v6

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    add-int/lit8 v0, v2, 0x1

    .line 4
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x10

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    .line 5
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x18

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    .line 6
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x20

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    .line 7
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x28

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    .line 8
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x30

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    .line 9
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long/2addr p1, v2

    and-long/2addr p1, v4

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v1, v0

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldPacker.addU64( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "rs"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Saving value out of range for type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addU64(Landroidx/renderscript/Long2;)V
    .locals 2

    .line 12
    iget-wide v0, p1, Landroidx/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 13
    iget-wide v0, p1, Landroidx/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    return-void
.end method

.method public addU64(Landroidx/renderscript/Long3;)V
    .locals 2

    .line 14
    iget-wide v0, p1, Landroidx/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 15
    iget-wide v0, p1, Landroidx/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 16
    iget-wide v0, p1, Landroidx/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    return-void
.end method

.method public addU64(Landroidx/renderscript/Long4;)V
    .locals 2

    .line 17
    iget-wide v0, p1, Landroidx/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 18
    iget-wide v0, p1, Landroidx/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 19
    iget-wide v0, p1, Landroidx/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 20
    iget-wide v0, p1, Landroidx/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    return-void
.end method

.method public addU8(Landroidx/renderscript/Short2;)V
    .locals 1

    .line 4
    iget-short v0, p1, Landroidx/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 5
    iget-short p1, p1, Landroidx/renderscript/Short2;->y:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    return-void
.end method

.method public addU8(Landroidx/renderscript/Short3;)V
    .locals 1

    .line 6
    iget-short v0, p1, Landroidx/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 7
    iget-short v0, p1, Landroidx/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 8
    iget-short p1, p1, Landroidx/renderscript/Short3;->z:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    return-void
.end method

.method public addU8(Landroidx/renderscript/Short4;)V
    .locals 1

    .line 9
    iget-short v0, p1, Landroidx/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 10
    iget-short v0, p1, Landroidx/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 11
    iget-short v0, p1, Landroidx/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 12
    iget-short p1, p1, Landroidx/renderscript/Short4;->w:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    return-void
.end method

.method public addU8(S)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldPacker.addU8( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rs"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Saving value out of range for type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public align(I)V
    .locals 3

    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    and-int v1, p1, v0

    if-nez v1, :cond_1

    .line 1
    :goto_0
    iget p1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    and-int v1, p1, v0

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->flip(I)V

    .line 3
    iget-object p1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/4 v2, 0x0

    aput-byte v2, p1, v1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argument must be a non-negative non-zero power of 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    return-object v0
.end method

.method public getPos()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    return-void
.end method

.method public reset(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 2
    iget v0, p0, Landroidx/renderscript/FieldPacker;->mLen:I

    if-gt p1, v0, :cond_0

    .line 3
    iput p1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    return-void

    .line 4
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "out of range argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/2addr v0, p1

    if-ltz v0, :cond_0

    .line 2
    iget v1, p0, Landroidx/renderscript/FieldPacker;->mLen:I

    if-gt v0, v1, :cond_0

    .line 3
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    return-void

    .line 4
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "out of range argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subBoolean()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public subByte2()Landroidx/renderscript/Byte2;
    .locals 2

    .line 1
    new-instance v0, Landroidx/renderscript/Byte2;

    invoke-direct {v0}, Landroidx/renderscript/Byte2;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroidx/renderscript/Byte2;->y:B

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroidx/renderscript/Byte2;->x:B

    return-object v0
.end method

.method public subByte3()Landroidx/renderscript/Byte3;
    .locals 2

    .line 1
    new-instance v0, Landroidx/renderscript/Byte3;

    invoke-direct {v0}, Landroidx/renderscript/Byte3;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroidx/renderscript/Byte3;->z:B

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroidx/renderscript/Byte3;->y:B

    .line 4
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroidx/renderscript/Byte3;->x:B

    return-object v0
.end method

.method public subByte4()Landroidx/renderscript/Byte4;
    .locals 2

    .line 1
    new-instance v0, Landroidx/renderscript/Byte4;

    invoke-direct {v0}, Landroidx/renderscript/Byte4;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroidx/renderscript/Byte4;->w:B

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroidx/renderscript/Byte4;->z:B

    .line 4
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroidx/renderscript/Byte4;->y:B

    .line 5
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroidx/renderscript/Byte4;->x:B

    return-object v0
.end method

.method public subDouble2()Landroidx/renderscript/Double2;
    .locals 3

    .line 1
    new-instance v0, Landroidx/renderscript/Double2;

    invoke-direct {v0}, Landroidx/renderscript/Double2;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Double2;->y:D

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Double2;->x:D

    return-object v0
.end method

.method public subDouble3()Landroidx/renderscript/Double3;
    .locals 3

    .line 1
    new-instance v0, Landroidx/renderscript/Double3;

    invoke-direct {v0}, Landroidx/renderscript/Double3;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Double3;->z:D

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Double3;->y:D

    .line 4
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Double3;->x:D

    return-object v0
.end method

.method public subDouble4()Landroidx/renderscript/Double4;
    .locals 3

    .line 1
    new-instance v0, Landroidx/renderscript/Double4;

    invoke-direct {v0}, Landroidx/renderscript/Double4;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Double4;->w:D

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Double4;->z:D

    .line 4
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Double4;->y:D

    .line 5
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Double4;->x:D

    return-object v0
.end method

.method public subF32()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public subF64()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public subFloat2()Landroidx/renderscript/Float2;
    .locals 2

    .line 1
    new-instance v0, Landroidx/renderscript/Float2;

    invoke-direct {v0}, Landroidx/renderscript/Float2;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroidx/renderscript/Float2;->y:F

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroidx/renderscript/Float2;->x:F

    return-object v0
.end method

.method public subFloat3()Landroidx/renderscript/Float3;
    .locals 2

    .line 1
    new-instance v0, Landroidx/renderscript/Float3;

    invoke-direct {v0}, Landroidx/renderscript/Float3;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroidx/renderscript/Float3;->z:F

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroidx/renderscript/Float3;->y:F

    .line 4
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroidx/renderscript/Float3;->x:F

    return-object v0
.end method

.method public subFloat4()Landroidx/renderscript/Float4;
    .locals 2

    .line 1
    new-instance v0, Landroidx/renderscript/Float4;

    invoke-direct {v0}, Landroidx/renderscript/Float4;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroidx/renderscript/Float4;->w:F

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroidx/renderscript/Float4;->z:F

    .line 4
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroidx/renderscript/Float4;->y:F

    .line 5
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroidx/renderscript/Float4;->x:F

    return-object v0
.end method

.method public subI16()S
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->subalign(I)V

    .line 2
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    add-int/lit8 v1, v1, -0x1

    .line 3
    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0
.end method

.method public subI32()I
    .locals 4

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->subalign(I)V

    .line 2
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v1, v1, -0x1

    .line 3
    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    .line 4
    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    .line 5
    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method public subI64()J
    .locals 10

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->subalign(I)V

    .line 2
    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    aget-byte v3, v1, v2

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v7, 0x38

    shl-long/2addr v3, v7

    const-wide/16 v7, 0x0

    or-long/2addr v3, v7

    add-int/lit8 v2, v2, -0x1

    .line 3
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    aget-byte v7, v1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x30

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    add-int/lit8 v2, v2, -0x1

    .line 4
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    aget-byte v7, v1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    add-int/lit8 v2, v2, -0x1

    .line 5
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    aget-byte v7, v1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    add-int/lit8 v2, v2, -0x1

    .line 6
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    aget-byte v7, v1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x18

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    add-int/lit8 v2, v2, -0x1

    .line 7
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    aget-byte v7, v1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x10

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    add-int/lit8 v2, v2, -0x1

    .line 8
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    aget-byte v7, v1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v0

    or-long/2addr v3, v7

    add-int/lit8 v2, v2, -0x1

    .line 9
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    aget-byte v0, v1, v2

    int-to-long v0, v0

    and-long/2addr v0, v5

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public subI8()B
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->subalign(I)V

    .line 2
    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    aget-byte v0, v1, v2

    return v0
.end method

.method public subInt2()Landroidx/renderscript/Int2;
    .locals 2

    .line 1
    new-instance v0, Landroidx/renderscript/Int2;

    invoke-direct {v0}, Landroidx/renderscript/Int2;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroidx/renderscript/Int2;->y:I

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroidx/renderscript/Int2;->x:I

    return-object v0
.end method

.method public subInt3()Landroidx/renderscript/Int3;
    .locals 2

    .line 1
    new-instance v0, Landroidx/renderscript/Int3;

    invoke-direct {v0}, Landroidx/renderscript/Int3;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroidx/renderscript/Int3;->z:I

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroidx/renderscript/Int3;->y:I

    .line 4
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroidx/renderscript/Int3;->x:I

    return-object v0
.end method

.method public subInt4()Landroidx/renderscript/Int4;
    .locals 2

    .line 1
    new-instance v0, Landroidx/renderscript/Int4;

    invoke-direct {v0}, Landroidx/renderscript/Int4;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroidx/renderscript/Int4;->w:I

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroidx/renderscript/Int4;->z:I

    .line 4
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroidx/renderscript/Int4;->y:I

    .line 5
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroidx/renderscript/Int4;->x:I

    return-object v0
.end method

.method public subLong2()Landroidx/renderscript/Long2;
    .locals 3

    .line 1
    new-instance v0, Landroidx/renderscript/Long2;

    invoke-direct {v0}, Landroidx/renderscript/Long2;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Long2;->y:J

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Long2;->x:J

    return-object v0
.end method

.method public subLong3()Landroidx/renderscript/Long3;
    .locals 3

    .line 1
    new-instance v0, Landroidx/renderscript/Long3;

    invoke-direct {v0}, Landroidx/renderscript/Long3;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Long3;->z:J

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Long3;->y:J

    .line 4
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Long3;->x:J

    return-object v0
.end method

.method public subLong4()Landroidx/renderscript/Long4;
    .locals 3

    .line 1
    new-instance v0, Landroidx/renderscript/Long4;

    invoke-direct {v0}, Landroidx/renderscript/Long4;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Long4;->w:J

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Long4;->z:J

    .line 4
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Long4;->y:J

    .line 5
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/renderscript/Long4;->x:J

    return-object v0
.end method

.method public subMatrix2f()Landroidx/renderscript/Matrix2f;
    .locals 4

    .line 1
    new-instance v0, Landroidx/renderscript/Matrix2f;

    invoke-direct {v0}, Landroidx/renderscript/Matrix2f;-><init>()V

    .line 2
    iget-object v1, v0, Landroidx/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 3
    iget-object v2, v0, Landroidx/renderscript/Matrix2f;->mMat:[F

    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public subMatrix3f()Landroidx/renderscript/Matrix3f;
    .locals 4

    .line 1
    new-instance v0, Landroidx/renderscript/Matrix3f;

    invoke-direct {v0}, Landroidx/renderscript/Matrix3f;-><init>()V

    .line 2
    iget-object v1, v0, Landroidx/renderscript/Matrix3f;->mMat:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 3
    iget-object v2, v0, Landroidx/renderscript/Matrix3f;->mMat:[F

    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public subMatrix4f()Landroidx/renderscript/Matrix4f;
    .locals 4

    .line 1
    new-instance v0, Landroidx/renderscript/Matrix4f;

    invoke-direct {v0}, Landroidx/renderscript/Matrix4f;-><init>()V

    .line 2
    iget-object v1, v0, Landroidx/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 3
    iget-object v2, v0, Landroidx/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public subShort2()Landroidx/renderscript/Short2;
    .locals 2

    .line 1
    new-instance v0, Landroidx/renderscript/Short2;

    invoke-direct {v0}, Landroidx/renderscript/Short2;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroidx/renderscript/Short2;->y:S

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroidx/renderscript/Short2;->x:S

    return-object v0
.end method

.method public subShort3()Landroidx/renderscript/Short3;
    .locals 2

    .line 1
    new-instance v0, Landroidx/renderscript/Short3;

    invoke-direct {v0}, Landroidx/renderscript/Short3;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroidx/renderscript/Short3;->z:S

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroidx/renderscript/Short3;->y:S

    .line 4
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroidx/renderscript/Short3;->x:S

    return-object v0
.end method

.method public subShort4()Landroidx/renderscript/Short4;
    .locals 2

    .line 1
    new-instance v0, Landroidx/renderscript/Short4;

    invoke-direct {v0}, Landroidx/renderscript/Short4;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroidx/renderscript/Short4;->w:S

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroidx/renderscript/Short4;->z:S

    .line 4
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroidx/renderscript/Short4;->y:S

    .line 5
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroidx/renderscript/Short4;->x:S

    return-object v0
.end method

.method public subalign(I)V
    .locals 3

    add-int/lit8 v0, p1, -0x1

    and-int v1, p1, v0

    if-nez v1, :cond_2

    .line 1
    :goto_0
    iget p1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    and-int v1, p1, v0

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 2
    iput p1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 3
    :goto_1
    iget-object p1, p0, Landroidx/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    iget v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-ne p1, v1, :cond_1

    .line 4
    iget p1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 5
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->flip(I)V

    goto :goto_1

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argument must be a non-negative non-zero power of 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
