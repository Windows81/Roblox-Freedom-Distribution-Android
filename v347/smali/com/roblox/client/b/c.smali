.class public Lcom/roblox/client/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/roblox/engine/f$b;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/roblox/client/b/c$1;

    invoke-direct {v0}, Lcom/roblox/client/b/c$1;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Z)V

    .line 58
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-static {p0, p1, v0, v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 77
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 115
    invoke-static {}, Lcom/roblox/client/i/c;->a()Lcom/roblox/client/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/c;->b()Lcom/google/android/gms/analytics/h;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    new-instance v1, Lcom/google/android/gms/analytics/e$d;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/e$d;-><init>()V

    .line 118
    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/e$d;->b(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$d;

    move-result-object v1

    .line 119
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/e$d;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$d;

    move-result-object v1

    .line 120
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/analytics/e$d;->a(J)Lcom/google/android/gms/analytics/e$d;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/e$d;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/h;->a(Ljava/util/Map;)V

    .line 124
    const-string v0, "rbx.GA"

    const-string v1, "sendTiming: %s %s %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/roblox/client/util/n;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 81
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 5

    .prologue
    .line 89
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    invoke-static {}, Lcom/roblox/client/i/c;->a()Lcom/roblox/client/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/c;->b()Lcom/google/android/gms/analytics/h;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_1

    .line 96
    new-instance v1, Lcom/google/android/gms/analytics/e$a;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/e$a;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/e$a;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/e$a;->b(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$a;

    move-result-object v1

    .line 97
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 98
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/e$a;->c(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$a;

    .line 102
    :goto_1
    if-eqz p3, :cond_4

    .line 103
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/analytics/e$a;->a(J)Lcom/google/android/gms/analytics/e$a;

    .line 108
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/e$a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/h;->a(Ljava/util/Map;)V

    .line 110
    const-string v0, "rbx.GA"

    const-string v1, "sendAnalytics: %s %s %s %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/roblox/client/util/n;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_3
    const-string p2, "NO_LABEL"

    goto :goto_1

    .line 105
    :cond_4
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 64
    invoke-static {}, Lcom/roblox/client/i/c;->a()Lcom/roblox/client/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/c;->b()Lcom/google/android/gms/analytics/h;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    const-string v1, "rbx.GA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isFatal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v1, Lcom/google/android/gms/analytics/e$b;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/e$b;-><init>()V

    .line 69
    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/e$b;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$b;

    move-result-object v1

    .line 70
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/e$b;->a(Z)Lcom/google/android/gms/analytics/e$b;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/e$b;->a()Ljava/util/Map;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/h;->a(Ljava/util/Map;)V

    .line 73
    :cond_0
    return-void
.end method
