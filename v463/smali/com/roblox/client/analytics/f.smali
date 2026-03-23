.class public Lcom/roblox/client/analytics/f;
.super Lcom/roblox/client/analytics/e;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/analytics/h;

.field private b:Lcom/google/android/gms/analytics/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/roblox/client/analytics/e;-><init>()V

    return-void
.end method

.method private a(Lcom/roblox/client/analytics/d$a;)Lcom/google/android/gms/analytics/h;
    .locals 1

    .line 21
    sget-object v0, Lcom/roblox/client/analytics/f$1;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/analytics/d$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 23
    iget-object p1, p0, Lcom/roblox/client/analytics/f;->a:Lcom/google/android/gms/analytics/h;

    return-object p1

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/analytics/f;->b:Lcom/google/android/gms/analytics/h;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/analytics/d;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/d;

    move-result-object p1

    const/high16 v0, 0x7f120000

    .line 32
    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/d;->a(I)Lcom/google/android/gms/analytics/h;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/analytics/f;->a:Lcom/google/android/gms/analytics/h;

    .line 35
    invoke-static {}, Lcom/roblox/client/b;->bH()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/d;->a(I)Lcom/google/android/gms/analytics/h;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/analytics/f;->b:Lcom/google/android/gms/analytics/h;

    .line 37
    invoke-static {}, Lcom/roblox/client/b;->bI()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/h;->a(D)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/analytics/f;->a:Lcom/google/android/gms/analytics/h;

    iput-object p1, p0, Lcom/roblox/client/analytics/f;->b:Lcom/google/android/gms/analytics/h;

    :goto_0
    return-void
.end method

.method public a(Lcom/roblox/client/analytics/d$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 49
    :cond_1
    new-instance v0, Lcom/google/android/gms/analytics/e$a;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/e$a;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/e$a;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/analytics/e$a;->b(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$a;

    move-result-object v0

    if-eqz p4, :cond_2

    .line 50
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 51
    invoke-virtual {v0, p4}, Lcom/google/android/gms/analytics/e$a;->c(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$a;

    goto :goto_0

    :cond_2
    const-string p4, "NO_LABEL"

    :goto_0
    if-eqz p5, :cond_3

    .line 56
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/e$a;->a(J)Lcom/google/android/gms/analytics/e$a;

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x0

    .line 58
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    .line 61
    :goto_1
    invoke-direct {p0, p1}, Lcom/roblox/client/analytics/f;->a(Lcom/roblox/client/analytics/d$a;)Lcom/google/android/gms/analytics/h;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/e$a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/h;->a(Ljava/util/Map;)V

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p3, p1, p2

    const/4 p2, 0x2

    aput-object p4, p1, p2

    const/4 p2, 0x3

    .line 63
    invoke-virtual {p5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "sendAnalytics: %s %s %s %s"

    invoke-static {p2, p1}, Lcom/roblox/client/ae/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "rbx.GA"

    invoke-static {p2, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 67
    sget-object v0, Lcom/roblox/client/analytics/d$a;->a:Lcom/roblox/client/analytics/d$a;

    invoke-direct {p0, v0}, Lcom/roblox/client/analytics/f;->a(Lcom/roblox/client/analytics/d$a;)Lcom/google/android/gms/analytics/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Lcom/google/android/gms/analytics/e$d;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/e$d;-><init>()V

    .line 70
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/e$d;->b(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$d;

    move-result-object v1

    .line 71
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/e$d;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$d;

    move-result-object v1

    .line 72
    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/analytics/e$d;->a(J)Lcom/google/android/gms/analytics/e$d;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/e$d;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/h;->a(Ljava/util/Map;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    .line 76
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "sendTiming: %s %s %d"

    invoke-static {p1, v0}, Lcom/roblox/client/ae/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "rbx.GA"

    invoke-static {p2, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .line 84
    sget-object v0, Lcom/roblox/client/analytics/d$a;->a:Lcom/roblox/client/analytics/d$a;

    invoke-direct {p0, v0}, Lcom/roblox/client/analytics/f;->a(Lcom/roblox/client/analytics/d$a;)Lcom/google/android/gms/analytics/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isFatal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rbx.GA"

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v1, Lcom/google/android/gms/analytics/e$b;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/e$b;-><init>()V

    .line 89
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/e$b;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$b;

    move-result-object p1

    .line 90
    invoke-virtual {p1, p2}, Lcom/google/android/gms/analytics/e$b;->a(Z)Lcom/google/android/gms/analytics/e$b;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/e$b;->a()Ljava/util/Map;

    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/h;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
