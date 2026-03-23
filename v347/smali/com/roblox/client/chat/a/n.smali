.class public Lcom/roblox/client/chat/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/roblox/client/chat/a/n;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/roblox/client/chat/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v4/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/f",
            "<",
            "Lcom/roblox/client/chat/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/roblox/client/chat/a/b;

.field private e:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/a/n;->e:Ljava/lang/Object;

    .line 33
    new-instance v0, Landroid/support/v4/g/f;

    invoke-direct {v0}, Landroid/support/v4/g/f;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/a/n;->c:Landroid/support/v4/g/f;

    .line 34
    new-instance v0, Lcom/roblox/client/chat/a/b;

    iget-object v1, p0, Lcom/roblox/client/chat/a/n;->e:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/roblox/client/chat/a/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/roblox/client/chat/a/n;->d:Lcom/roblox/client/chat/a/b;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/a/n;->b:Ljava/util/HashMap;

    .line 36
    return-void
.end method

.method public static a()Lcom/roblox/client/chat/a/n;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/roblox/client/chat/a/n;->a:Lcom/roblox/client/chat/a/n;

    if-nez v0, :cond_1

    .line 17
    const-class v1, Lcom/roblox/client/chat/a/a;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcom/roblox/client/chat/a/n;->a:Lcom/roblox/client/chat/a/n;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/roblox/client/chat/a/n;

    invoke-direct {v0}, Lcom/roblox/client/chat/a/n;-><init>()V

    sput-object v0, Lcom/roblox/client/chat/a/n;->a:Lcom/roblox/client/chat/a/n;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Lcom/roblox/client/chat/a/n;->a:Lcom/roblox/client/chat/a/n;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(J)Lcom/roblox/client/chat/a/m;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/roblox/client/chat/a/n;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    return-object v0
.end method

.method public a(Lcom/roblox/client/chat/a/m;)V
    .locals 4

    .prologue
    .line 43
    iget-object v1, p0, Lcom/roblox/client/chat/a/n;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/n;->c:Landroid/support/v4/g/f;

    invoke-virtual {p1}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/g/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    .line 45
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p1}, Lcom/roblox/client/chat/a/m;->a(Lcom/roblox/client/chat/a/m;)V

    .line 50
    :goto_0
    monitor-exit v1

    .line 51
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/n;->c:Landroid/support/v4/g/f;

    invoke-virtual {p1}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/support/v4/g/f;->b(JLjava/lang/Object;)V

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(JLcom/roblox/client/chat/a/i;)Z
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lcom/roblox/client/chat/a/n;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/n;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/chat/a/n;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/i;

    invoke-virtual {v0, p3}, Lcom/roblox/client/chat/a/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/n;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const/4 v0, 0x1

    monitor-exit v1

    .line 76
    :goto_0
    return v0

    .line 75
    :cond_1
    monitor-exit v1

    .line 76
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(J)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 80
    iget-object v0, p0, Lcom/roblox/client/chat/a/n;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/i;

    .line 81
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/i;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 83
    goto :goto_0

    :cond_1
    move v0, v1

    .line 85
    goto :goto_0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/chat/a/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/roblox/client/chat/a/n;->d:Lcom/roblox/client/chat/a/b;

    return-object v0
.end method

.method public b(Lcom/roblox/client/chat/a/m;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/roblox/client/chat/a/n;->d:Lcom/roblox/client/chat/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/chat/a/b;->a(Ljava/lang/Object;Z)V

    .line 59
    return-void
.end method

.method public c(J)Lcom/roblox/client/chat/a/i;
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/roblox/client/chat/a/n;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/i;

    .line 90
    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/roblox/client/chat/a/n;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 120
    iget-object v0, p0, Lcom/roblox/client/chat/a/n;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->c()V

    .line 121
    iget-object v0, p0, Lcom/roblox/client/chat/a/n;->d:Lcom/roblox/client/chat/a/b;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/b;->clear()V

    .line 122
    return-void
.end method

.method public c(Lcom/roblox/client/chat/a/m;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/roblox/client/chat/a/n;->d:Lcom/roblox/client/chat/a/b;

    invoke-virtual {v0, p1}, Lcom/roblox/client/chat/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public d(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    const-string v0, ""

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/chat/a/n;->b(J)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 111
    :goto_0
    return-object v0

    .line 99
    :pswitch_0
    const-string v0, "Offline"

    goto :goto_0

    .line 102
    :pswitch_1
    const-string v0, "Online"

    goto :goto_0

    .line 105
    :pswitch_2
    const-string v0, "In Game"

    goto :goto_0

    .line 108
    :pswitch_3
    const-string v0, "In Studio"

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
