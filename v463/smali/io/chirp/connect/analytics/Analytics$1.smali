.class Lio/chirp/connect/analytics/Analytics$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/chirp/connect/analytics/Analytics;->postAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/chirp/connect/analytics/Analytics;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$appSecret:Ljava/lang/String;

.field final synthetic val$json:Ljava/lang/String;

.field final synthetic val$product:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/chirp/connect/analytics/Analytics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/chirp/connect/analytics/Analytics$1;->this$0:Lio/chirp/connect/analytics/Analytics;

    iput-object p2, p0, Lio/chirp/connect/analytics/Analytics$1;->val$appKey:Ljava/lang/String;

    iput-object p3, p0, Lio/chirp/connect/analytics/Analytics$1;->val$appSecret:Ljava/lang/String;

    iput-object p4, p0, Lio/chirp/connect/analytics/Analytics$1;->val$product:Ljava/lang/String;

    iput-object p5, p0, Lio/chirp/connect/analytics/Analytics$1;->val$action:Ljava/lang/String;

    iput-object p6, p0, Lio/chirp/connect/analytics/Analytics$1;->val$json:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lio/chirp/connect/analytics/Analytics$1;->this$0:Lio/chirp/connect/analytics/Analytics;

    invoke-static {v0}, Lio/chirp/connect/analytics/Analytics;->access$000(Lio/chirp/connect/analytics/Analytics;)Lio/chirp/b/a;

    move-result-object v1

    iget-object v2, p0, Lio/chirp/connect/analytics/Analytics$1;->val$appKey:Ljava/lang/String;

    iget-object v3, p0, Lio/chirp/connect/analytics/Analytics$1;->val$appSecret:Ljava/lang/String;

    iget-object v4, p0, Lio/chirp/connect/analytics/Analytics$1;->val$product:Ljava/lang/String;

    iget-object v5, p0, Lio/chirp/connect/analytics/Analytics$1;->val$action:Ljava/lang/String;

    iget-object v6, p0, Lio/chirp/connect/analytics/Analytics$1;->val$json:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lio/chirp/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
