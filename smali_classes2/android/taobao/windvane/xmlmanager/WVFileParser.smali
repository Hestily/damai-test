.class Landroid/taobao/windvane/xmlmanager/WVFileParser;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private xmlBlockConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Landroid/taobao/windvane/xmlmanager/WVFileParser;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    :try_start_0
    const-string v0, "android.content.res.XmlBlock"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 2
    const-class v3, [B

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/xmlmanager/WVFileParser;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public openXmlResourceParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 5

    const-string v0, "Read Error"

    .line 1
    iget-object v1, p0, Landroid/taobao/windvane/xmlmanager/WVFileParser;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    :try_start_0
    const-class v1, Landroid/taobao/windvane/xmlmanager/WVXmlResUtils;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/taobao/windvane/xmlmanager/WVInputStreamUtils;->InputStreamTOByte(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 5
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/taobao/windvane/xmlmanager/WVFileParser;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v1, "newParser"

    new-array v3, v4, [Ljava/lang/Object;

    .line 7
    invoke-static {p1, v1, v3}, Landroid/taobao/windvane/xmlmanager/WVReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    instance-of v1, p1, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_2

    .line 9
    check-cast p1, Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v2
.end method
