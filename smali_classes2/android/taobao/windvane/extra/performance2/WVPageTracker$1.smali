.class Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPageReceivedPerformanceTiming(Landroid/taobao/windvane/webview/IWVWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;->this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 12

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "{}"

    :cond_0
    const-string v0, "\""

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "\\"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "ns"

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string/jumbo p1, "rs"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string/jumbo p1, "re"

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string p1, "dc"

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 10
    sget-object p1, Lcom/taobao/android/riverlogger/RVLLevel;->Error:Lcom/taobao/android/riverlogger/RVLLevel;

    invoke-static {}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$100()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/taobao/android/riverlogger/d;->a(Lcom/taobao/android/riverlogger/RVLLevel;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v9

    const-string/jumbo v10, "navigationStart"

    iget-object v11, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;->this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-static {v11}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$000(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/taobao/android/riverlogger/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Lcom/taobao/android/riverlogger/a;->h(J)Lcom/taobao/android/riverlogger/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/android/riverlogger/a;->d()V

    .line 11
    invoke-static {}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$100()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/taobao/android/riverlogger/d;->a(Lcom/taobao/android/riverlogger/RVLLevel;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v9

    const-string/jumbo v10, "requestStart"

    iget-object v11, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;->this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-static {v11}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$000(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/taobao/android/riverlogger/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Lcom/taobao/android/riverlogger/a;->h(J)Lcom/taobao/android/riverlogger/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/android/riverlogger/a;->d()V

    .line 12
    invoke-static {}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/taobao/android/riverlogger/d;->a(Lcom/taobao/android/riverlogger/RVLLevel;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v3

    const-string/jumbo v4, "responseEnd"

    iget-object v9, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;->this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-static {v9}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$000(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lcom/taobao/android/riverlogger/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/taobao/android/riverlogger/a;->h(J)Lcom/taobao/android/riverlogger/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/android/riverlogger/a;->d()V

    .line 13
    invoke-static {}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/taobao/android/riverlogger/d;->a(Lcom/taobao/android/riverlogger/RVLLevel;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v3

    const-string v4, "domComplete"

    iget-object v9, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;->this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-static {v9}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$000(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lcom/taobao/android/riverlogger/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Lcom/taobao/android/riverlogger/a;->h(J)Lcom/taobao/android/riverlogger/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/android/riverlogger/a;->d()V

    .line 14
    iget-object v3, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;->this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-static {v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$200(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-lez v9, :cond_2

    .line 15
    invoke-static {}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/taobao/android/riverlogger/d;->a(Lcom/taobao/android/riverlogger/RVLLevel;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object p1

    const-string v3, "firstPaint"

    iget-object v4, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;->this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-static {v4}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$000(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/taobao/android/riverlogger/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object p1

    iget-object v3, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;->this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-static {v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$200(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Lcom/taobao/android/riverlogger/a;->h(J)Lcom/taobao/android/riverlogger/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/riverlogger/a;->d()V

    goto :goto_0

    .line 16
    :cond_2
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;->this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-static {p1, v1, v2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$302(Landroid/taobao/windvane/extra/performance2/WVPageTracker;J)J

    .line 17
    :goto_0
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;->this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-static {p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$400(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {p1, v3, v1, v2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$500(Landroid/taobao/windvane/extra/performance2/WVPageTracker;Ljava/lang/String;J)V

    .line 18
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;->this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-static {p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$400(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aget-object v1, v1, v2

    const-string v2, "fs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$500(Landroid/taobao/windvane/extra/performance2/WVPageTracker;Ljava/lang/String;J)V

    .line 19
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;->this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-static {p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$400(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-static {p1, v1, v5, v6}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$500(Landroid/taobao/windvane/extra/performance2/WVPageTracker;Ljava/lang/String;J)V

    .line 20
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;->this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-static {p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$400(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aget-object v1, v1, v2

    const-string v2, "ds"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$500(Landroid/taobao/windvane/extra/performance2/WVPageTracker;Ljava/lang/String;J)V

    .line 21
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;->this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-static {p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$400(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aget-object v1, v1, v2

    const-string v2, "ls"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$500(Landroid/taobao/windvane/extra/performance2/WVPageTracker;Ljava/lang/String;J)V

    .line 22
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;->this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-static {p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$400(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aget-object v1, v1, v2

    const-string v2, "le"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->access$500(Landroid/taobao/windvane/extra/performance2/WVPageTracker;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method
