.class public Landroid/taobao/windvane/urlintercept/WVURLInterceptService;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static mABTestHandler:Landroid/taobao/windvane/urlintercept/WVABTestUrlHandler;

.field private static mHandler:Landroid/taobao/windvane/urlintercept/WVURLIntercepterHandler;

.field private static mIntercepter:Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;

.field private static rulePat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static urlRules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->urlRules:Ljava/util/Set;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->rulePat:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->mIntercepter:Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;

    .line 4
    sput-object v0, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->mHandler:Landroid/taobao/windvane/urlintercept/WVURLIntercepterHandler;

    .line 5
    sput-object v0, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->mABTestHandler:Landroid/taobao/windvane/urlintercept/WVABTestUrlHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWVABTestHandler()Landroid/taobao/windvane/urlintercept/WVABTestUrlHandler;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->mABTestHandler:Landroid/taobao/windvane/urlintercept/WVABTestUrlHandler;

    return-object v0
.end method

.method public static getWVURLInterceptHandler()Landroid/taobao/windvane/urlintercept/WVURLIntercepterHandler;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->mHandler:Landroid/taobao/windvane/urlintercept/WVURLIntercepterHandler;

    return-object v0
.end method

.method public static getWVURLInterceptRulePats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->rulePat:Ljava/util/Map;

    return-object v0
.end method

.method public static getWVURLIntercepter()Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->mIntercepter:Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;

    return-object v0
.end method

.method public static getWVURLinterceptRules()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->urlRules:Ljava/util/Set;

    return-object v0
.end method

.method public static registerWVABTestURLHandler(Landroid/taobao/windvane/urlintercept/WVABTestUrlHandler;)V
    .locals 0

    .line 1
    sput-object p0, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->mABTestHandler:Landroid/taobao/windvane/urlintercept/WVABTestUrlHandler;

    return-void
.end method

.method public static registerWVURLInterceptHandler(Landroid/taobao/windvane/urlintercept/WVURLIntercepterHandler;)V
    .locals 0

    .line 1
    sput-object p0, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->mHandler:Landroid/taobao/windvane/urlintercept/WVURLIntercepterHandler;

    return-void
.end method

.method public static registerWVURLInterceptRulePats(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->rulePat:Ljava/util/Map;

    return-void
.end method

.method public static registerWVURLIntercepter(Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;)V
    .locals 0

    .line 1
    sput-object p0, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->mIntercepter:Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;

    return-void
.end method

.method public static registerWVURLinterceptRules(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;

    .line 3
    iget-boolean v2, v1, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;->needdecode:Z

    if-eqz v2, :cond_0

    .line 4
    :try_start_0
    iget-object v2, v1, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;->pattern:Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;->pattern:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_1
    sput-object p0, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->urlRules:Ljava/util/Set;

    return-void
.end method

.method public static resetRulesAndPat()V
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->urlRules:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2
    sget-object v0, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->rulePat:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
