.class public Landroidx/renderscript/Element;
.super Landroidx/renderscript/BaseObj;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/Element$Builder;,
        Landroidx/renderscript/Element$DataKind;,
        Landroidx/renderscript/Element$DataType;
    }
.end annotation


# instance fields
.field mArraySizes:[I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroidx/renderscript/Element;

.field mKind:Landroidx/renderscript/Element$DataKind;

.field mNormalized:Z

.field mOffsetInBytes:[I

.field mSize:I

.field mType:Landroidx/renderscript/Element$DataType;

.field mVectorSize:I

.field mVisibleElementMap:[I


# direct methods
.method constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    return-void
.end method

.method constructor <init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;ZI)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 15
    sget-object p1, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroidx/renderscript/Element$DataType;

    if-eq p4, p1, :cond_1

    sget-object p1, Landroidx/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroidx/renderscript/Element$DataType;

    if-eq p4, p1, :cond_1

    sget-object p1, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroidx/renderscript/Element$DataType;

    if-eq p4, p1, :cond_1

    const/4 p1, 0x3

    if-ne p7, p1, :cond_0

    .line 16
    iget p1, p4, Landroidx/renderscript/Element$DataType;->mSize:I

    mul-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroidx/renderscript/Element;->mSize:I

    goto :goto_0

    .line 17
    :cond_0
    iget p1, p4, Landroidx/renderscript/Element$DataType;->mSize:I

    mul-int p1, p1, p7

    iput p1, p0, Landroidx/renderscript/Element;->mSize:I

    goto :goto_0

    .line 18
    :cond_1
    iget p1, p4, Landroidx/renderscript/Element$DataType;->mSize:I

    iput p1, p0, Landroidx/renderscript/Element;->mSize:I

    .line 19
    :goto_0
    iput-object p4, p0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 20
    iput-object p5, p0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    .line 21
    iput-boolean p6, p0, Landroidx/renderscript/Element;->mNormalized:Z

    .line 22
    iput p7, p0, Landroidx/renderscript/Element;->mVectorSize:I

    return-void
.end method

.method constructor <init>(JLandroidx/renderscript/RenderScript;[Landroidx/renderscript/Element;[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/renderscript/Element;->mSize:I

    const/4 p2, 0x1

    .line 3
    iput p2, p0, Landroidx/renderscript/Element;->mVectorSize:I

    .line 4
    iput-object p4, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    .line 5
    iput-object p5, p0, Landroidx/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 6
    iput-object p6, p0, Landroidx/renderscript/Element;->mArraySizes:[I

    .line 7
    sget-object p2, Landroidx/renderscript/Element$DataType;->NONE:Landroidx/renderscript/Element$DataType;

    iput-object p2, p0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 8
    sget-object p2, Landroidx/renderscript/Element$DataKind;->USER:Landroidx/renderscript/Element$DataKind;

    iput-object p2, p0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    .line 9
    array-length p2, p4

    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/renderscript/Element;->mOffsetInBytes:[I

    .line 10
    :goto_0
    iget-object p2, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    array-length p3, p2

    if-ge p1, p3, :cond_0

    .line 11
    iget-object p3, p0, Landroidx/renderscript/Element;->mOffsetInBytes:[I

    iget p4, p0, Landroidx/renderscript/Element;->mSize:I

    aput p4, p3, p1

    .line 12
    aget-object p2, p2, p1

    iget p2, p2, Landroidx/renderscript/Element;->mSize:I

    iget-object p3, p0, Landroidx/renderscript/Element;->mArraySizes:[I

    aget p3, p3, p1

    mul-int p2, p2, p3

    add-int/2addr p4, p2

    iput p4, p0, Landroidx/renderscript/Element;->mSize:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Landroidx/renderscript/Element;->updateVisibleSubElements()V

    return-void
.end method

.method public static ALLOCATION(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ALLOCATION:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->RS_ALLOCATION:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ALLOCATION:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_ALLOCATION:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static A_8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_A_8:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_A:Landroidx/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_A_8:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_A_8:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static BOOLEAN(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_BOOLEAN:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->BOOLEAN:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_BOOLEAN:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_BOOLEAN:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static ELEMENT(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ELEMENT:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->RS_ELEMENT:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ELEMENT:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_ELEMENT:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_F32:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_F32:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_F32:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_2:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static F32_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_3:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static F32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_4:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_F64:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_64:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_F64:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_F64:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_2:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static F64_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_3:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static F64_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_4:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I16(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I16:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I16:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_I16:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I16_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_2:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I16_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_3:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I16_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_4:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I32:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I32:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_I32:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_2:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I32_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_3:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_4:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I64:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_64:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I64:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_I64:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_2:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I64_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_3:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I64_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_4:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I8:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I8:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_I8:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I8_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_2:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I8_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_3:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_4:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static MATRIX_2X2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->MATRIX_2X2:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static MATRIX_3X3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->MATRIX_3X3:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static MATRIX_4X4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->MATRIX_4X4:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static RGBA_4444(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_4444:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_4444:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_4444:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static RGBA_5551(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_5551:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_5551:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_5551:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static RGBA_8888(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_8888:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_8888:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_8888:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static RGB_565(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_565:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGB:Landroidx/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_565:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_565:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static RGB_888(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_888:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGB:Landroidx/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_888:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_888:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static SAMPLER(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SAMPLER:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->RS_SAMPLER:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SAMPLER:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_SAMPLER:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static SCRIPT(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SCRIPT:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->RS_SCRIPT:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SCRIPT:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_SCRIPT:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static TYPE(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_TYPE:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->RS_TYPE:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_TYPE:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_TYPE:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U16(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U16:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U16:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_U16:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U16_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_2:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U16_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_3:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U16_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_4:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U32:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_32:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U32:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_U32:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_2:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U32_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_3:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_4:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U64:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_64:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U64:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_U64:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_2:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U64_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_3:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U64_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_4:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U8:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U8:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_U8:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U8_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_2:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U8_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_3:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_4:Landroidx/renderscript/Element;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;
    .locals 10

    .line 1
    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_L:Landroidx/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_A:Landroidx/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_LA:Landroidx/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_RGB:Landroidx/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroidx/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_YUV:Landroidx/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p1, "Unsupported DataKind"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    if-eq p1, v0, :cond_3

    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    if-eq p1, v0, :cond_3

    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroidx/renderscript/Element$DataType;

    if-eq p1, v0, :cond_3

    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroidx/renderscript/Element$DataType;

    if-eq p1, v0, :cond_3

    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroidx/renderscript/Element$DataType;

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p1, "Unsupported DataType"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    :goto_1
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroidx/renderscript/Element$DataType;

    const-string v1, "Bad kind and type combo"

    if-ne p1, v0, :cond_5

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_RGB:Landroidx/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    invoke-direct {p0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_5
    :goto_2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroidx/renderscript/Element$DataType;

    if-ne p1, v0, :cond_7

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_6

    goto :goto_3

    .line 8
    :cond_6
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    invoke-direct {p0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_7
    :goto_3
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroidx/renderscript/Element$DataType;

    if-ne p1, v0, :cond_9

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_8

    goto :goto_4

    .line 10
    :cond_8
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    invoke-direct {p0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_9
    :goto_4
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    if-ne p1, v0, :cond_b

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroidx/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_a

    goto :goto_5

    .line 12
    :cond_a
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    invoke-direct {p0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_b
    :goto_5
    sget-object v0, Landroidx/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_d

    if-eq v0, v1, :cond_c

    const/4 v9, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x4

    const/4 v9, 0x4

    goto :goto_6

    :cond_d
    const/4 v9, 0x3

    goto :goto_6

    :cond_e
    const/4 v9, 0x2

    :goto_6
    const/4 v8, 0x1

    .line 14
    iget v0, p1, Landroidx/renderscript/Element$DataType;->mID:I

    int-to-long v3, v0

    iget v5, p2, Landroidx/renderscript/Element$DataKind;->mID:I

    const/4 v6, 0x1

    move-object v2, p0

    move v7, v9

    invoke-virtual/range {v2 .. v7}, Landroidx/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v3

    .line 15
    new-instance v0, Landroidx/renderscript/Element;

    move-object v2, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v9}, Landroidx/renderscript/Element;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;ZI)V

    return-object v0
.end method

.method static createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;
    .locals 12

    .line 1
    sget-object v5, Landroidx/renderscript/Element$DataKind;->USER:Landroidx/renderscript/Element$DataKind;

    .line 2
    iget v0, p1, Landroidx/renderscript/Element$DataType;->mID:I

    int-to-long v7, v0

    iget v9, v5, Landroidx/renderscript/Element$DataKind;->mID:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Landroidx/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v1

    .line 3
    new-instance v8, Landroidx/renderscript/Element;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Landroidx/renderscript/Element;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;ZI)V

    return-object v8
.end method

.method public static createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;
    .locals 10

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    .line 1
    sget-object v0, Landroidx/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v1, "Cannot create vector of non-primitive type."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    sget-object v6, Landroidx/renderscript/Element$DataKind;->USER:Landroidx/renderscript/Element$DataKind;

    const/4 v8, 0x0

    .line 4
    iget v0, p1, Landroidx/renderscript/Element$DataType;->mID:I

    int-to-long v1, v0

    iget v3, v6, Landroidx/renderscript/Element$DataKind;->mID:I

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v1

    .line 5
    new-instance v9, Landroidx/renderscript/Element;

    move-object v0, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, v6

    move v6, v8

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroidx/renderscript/Element;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;ZI)V

    return-object v9

    .line 6
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v1, "Vector size out of range 2-4."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateVisibleSubElements()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Element;->mElementNames:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x23

    if-ge v2, v0, :cond_2

    .line 3
    iget-object v5, p0, Landroidx/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    new-array v2, v3, [I

    iput-object v2, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 5
    iget-object v5, p0, Landroidx/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_3

    .line 6
    iget-object v5, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    add-int/lit8 v6, v3, 0x1

    aput v2, v5, v3

    move v3, v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public getBytesSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/renderscript/Element;->mSize:I

    return v0
.end method

.method public getDataKind()Landroidx/renderscript/Element$DataKind;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    return-object v0
.end method

.method public getDataType()Landroidx/renderscript/Element$DataType;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    return-object v0
.end method

.method public getDummyElement(Landroidx/renderscript/RenderScript;)J
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    iget v0, v0, Landroidx/renderscript/Element$DataType;->mID:I

    int-to-long v2, v0

    iget-object v0, p0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    iget v4, v0, Landroidx/renderscript/Element$DataKind;->mID:I

    iget-boolean v5, p0, Landroidx/renderscript/Element;->mNormalized:Z

    iget v6, p0, Landroidx/renderscript/Element;->mVectorSize:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/renderscript/RenderScript;->nIncElementCreate(JIZI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSubElement(I)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    .line 2
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    aget p1, v0, p1

    aget-object p1, v1, p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Illegal sub-element index"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Element contains no sub-elements"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSubElementArraySize(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    .line 2
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/renderscript/Element;->mArraySizes:[I

    aget p1, v0, p1

    aget p1, v1, p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Illegal sub-element index"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Element contains no sub-elements"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSubElementCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    array-length v0, v0

    return v0
.end method

.method public getSubElementName(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    .line 2
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget p1, v0, p1

    aget-object p1, v1, p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Illegal sub-element index"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Element contains no sub-elements"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSubElementOffsetBytes(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    .line 2
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/renderscript/Element;->mOffsetInBytes:[I

    aget p1, v0, p1

    aget p1, v1, p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Illegal sub-element index"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Element contains no sub-elements"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getVectorSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/renderscript/Element;->mVectorSize:I

    return v0
.end method

.method public isCompatible(Landroidx/renderscript/Element;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/renderscript/BaseObj;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Landroidx/renderscript/Element;->mSize:I

    iget v2, p1, Landroidx/renderscript/Element;->mSize:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    sget-object v2, Landroidx/renderscript/Element$DataType;->NONE:Landroidx/renderscript/Element$DataType;

    if-eq v0, v2, :cond_1

    iget-object v2, p1, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/renderscript/Element;->mVectorSize:I

    iget p1, p1, Landroidx/renderscript/Element;->mVectorSize:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isComplex()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 3
    aget-object v2, v2, v0

    iget-object v2, v2, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
