.class public Lcom/roblox/client/h/a;
.super Lcom/roblox/client/h/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/h/a$a;
    }
.end annotation


# instance fields
.field private d:J

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/roblox/client/h/a$a;


# direct methods
.method public constructor <init>(Lcom/b/a/a/o;JILjava/lang/String;ZLcom/roblox/client/h/a$a;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/roblox/client/h/t;-><init>(Lcom/b/a/a/o;)V

    .line 45
    iput-wide p2, p0, Lcom/roblox/client/h/a;->d:J

    .line 46
    iput p4, p0, Lcom/roblox/client/h/a;->e:I

    .line 47
    iput-object p5, p0, Lcom/roblox/client/h/a;->f:Ljava/lang/String;

    .line 48
    iput-boolean p6, p0, Lcom/roblox/client/h/a;->g:Z

    .line 49
    iput-object p7, p0, Lcom/roblox/client/h/a;->h:Lcom/roblox/client/h/a$a;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/h/a;)Lcom/roblox/client/h/a$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/roblox/client/h/a;->h:Lcom/roblox/client/h/a$a;

    return-object v0
.end method

.method private a(Lcom/roblox/client/e/f;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/roblox/client/h/a;->h:Lcom/roblox/client/h/a$a;

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/roblox/client/h/a;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/a$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/h/a$1;-><init>(Lcom/roblox/client/h/a;Lcom/roblox/client/e/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/roblox/client/h/t$a;)V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/roblox/client/e/f;

    invoke-direct {v0}, Lcom/roblox/client/e/f;-><init>()V

    .line 128
    invoke-direct {p0, v0}, Lcom/roblox/client/h/a;->a(Lcom/roblox/client/e/f;)V

    .line 129
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public g()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/e;->b()Lcom/roblox/platform/http/c/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/roblox/client/h/a;->d:J

    iget v1, p0, Lcom/roblox/client/h/a;->e:I

    iget-object v4, p0, Lcom/roblox/client/h/a;->f:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/roblox/platform/http/c/b;->a(JILjava/lang/String;)Ld/b;

    move-result-object v0

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ld/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/ac;

    invoke-virtual {v0}, Lb/ac;->g()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {v1}, Ld/l;->a()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_0

    .line 60
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/roblox/client/h/a;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/chat/a/a;->b(J)V

    .line 61
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/e/u;

    iget-wide v2, p0, Lcom/roblox/client/h/a;->d:J

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/e/u;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 112
    :goto_0
    return-void

    .line 65
    :cond_0
    sget-object v1, Lcom/roblox/client/chat/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v2, Lcom/roblox/client/e/f;

    invoke-direct {v2}, Lcom/roblox/client/e/f;-><init>()V

    .line 67
    iget-wide v4, p0, Lcom/roblox/client/h/a;->d:J

    invoke-virtual {v2, v4, v5}, Lcom/roblox/client/e/f;->a(J)V

    .line 68
    iget-boolean v1, p0, Lcom/roblox/client/h/a;->g:Z

    invoke-virtual {v2, v1}, Lcom/roblox/client/e/f;->a(Z)V

    .line 70
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 72
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    invoke-virtual {v2, v5}, Lcom/roblox/client/e/f;->a(Ljava/util/ArrayList;)V

    .line 74
    if-lez v4, :cond_4

    .line 76
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    iget-wide v6, p0, Lcom/roblox/client/h/a;->d:J

    invoke-virtual {v0, v6, v7}, Lcom/roblox/client/chat/a/a;->d(J)Lcom/roblox/client/chat/a/h;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v1, v0

    .line 79
    :goto_1
    add-int/lit8 v0, v4, -0x1

    :goto_2
    if-ltz v0, :cond_2

    .line 80
    new-instance v4, Lcom/roblox/client/chat/a/h;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/roblox/client/chat/a/h;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 77
    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 82
    :cond_2
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    iget-wide v6, p0, Lcom/roblox/client/h/a;->d:J

    invoke-virtual {v0, v6, v7, v5}, Lcom/roblox/client/chat/a/a;->a(JLjava/util/ArrayList;)V

    .line 85
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    .line 86
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->k()Z

    move-result v3

    .line 87
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v4

    iget-wide v6, p0, Lcom/roblox/client/h/a;->d:J

    invoke-virtual {v4, v6, v7, v0}, Lcom/roblox/client/chat/a/a;->a(JLcom/roblox/client/chat/a/h;)Z

    move-result v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    iget-boolean v0, p0, Lcom/roblox/client/h/a;->g:Z

    if-eqz v0, :cond_3

    .line 90
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    iget-wide v4, p0, Lcom/roblox/client/h/a;->d:J

    invoke-virtual {v0, v4, v5}, Lcom/roblox/client/chat/a/a;->e(J)V

    .line 92
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v4, Lcom/roblox/client/e/o;

    iget-wide v6, p0, Lcom/roblox/client/h/a;->d:J

    invoke-direct {v4, v6, v7}, Lcom/roblox/client/e/o;-><init>(J)V

    invoke-virtual {v0, v4}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 95
    if-nez v1, :cond_5

    .line 97
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/r;

    invoke-direct {v1}, Lcom/roblox/client/h/r;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 110
    :cond_4
    :goto_3
    invoke-direct {p0, v2}, Lcom/roblox/client/h/a;->a(Lcom/roblox/client/e/f;)V

    .line 111
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 99
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v3, v0, :cond_4

    .line 100
    if-nez v3, :cond_6

    .line 101
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/e/x;

    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/chat/a/a;->e()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/roblox/client/e/x;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto :goto_3

    .line 104
    :cond_6
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/e/x;

    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/chat/a/a;->d()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/roblox/client/e/x;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto :goto_3
.end method
