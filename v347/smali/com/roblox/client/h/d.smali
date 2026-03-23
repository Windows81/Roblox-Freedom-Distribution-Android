.class public Lcom/roblox/client/h/d;
.super Lcom/roblox/client/h/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/h/d$a;
    }
.end annotation


# instance fields
.field private d:I

.field private e:I

.field private f:Lcom/roblox/client/h/d$a;


# direct methods
.method public constructor <init>(IILcom/roblox/client/h/d$a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/roblox/client/h/t;-><init>()V

    .line 36
    iput p1, p0, Lcom/roblox/client/h/d;->d:I

    .line 37
    iput p2, p0, Lcom/roblox/client/h/d;->e:I

    .line 38
    iput-object p3, p0, Lcom/roblox/client/h/d;->f:Lcom/roblox/client/h/d$a;

    .line 39
    return-void
.end method

.method private a(II)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/e;->b()Lcom/roblox/platform/http/c/b;

    move-result-object v0

    iget v1, p0, Lcom/roblox/client/h/d;->d:I

    invoke-interface {v0, p1, v1}, Lcom/roblox/platform/http/c/b;->a(II)Ld/b;

    move-result-object v0

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ld/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/ac;

    invoke-virtual {v0}, Lb/ac;->g()Ljava/lang/String;

    move-result-object v0

    .line 67
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

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v3, Lcom/roblox/client/chat/a/e;

    invoke-direct {v3}, Lcom/roblox/client/chat/a/e;-><init>()V

    .line 75
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 77
    new-instance v5, Lcom/roblox/client/chat/a/d;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/roblox/client/chat/a/d;-><init>(Lorg/json/JSONObject;)V

    .line 78
    invoke-virtual {v3, v5}, Lcom/roblox/client/chat/a/e;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-direct {p0, v5, v1}, Lcom/roblox/client/h/d;->a(Lcom/roblox/client/chat/a/d;Ljava/util/HashSet;)V

    .line 80
    invoke-virtual {v5}, Lcom/roblox/client/chat/a/d;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {v0, v3, p2}, Lcom/roblox/client/chat/a/a;->a(Ljava/util/ArrayList;I)V

    .line 87
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/2addr v0, p2

    .line 89
    iget v5, p0, Lcom/roblox/client/h/d;->d:I

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    sub-int v4, v5, v4

    .line 90
    if-lez v4, :cond_1

    .line 91
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/roblox/client/chat/a/a;->a(I)V

    .line 95
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 99
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/roblox/client/chat/a/n;->b(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 100
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_3
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/roblox/client/chat/a/n;->a(J)Lcom/roblox/client/chat/a/m;

    move-result-object v6

    .line 105
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/roblox/client/chat/a/m;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 106
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 111
    new-instance v0, Lcom/roblox/client/h/m;

    invoke-direct {v0, v4}, Lcom/roblox/client/h/m;-><init>(Ljava/util/ArrayList;)V

    .line 112
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 116
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 117
    new-instance v0, Lcom/roblox/client/h/q;

    invoke-direct {v0, v5}, Lcom/roblox/client/h/q;-><init>(Ljava/util/List;)V

    .line 118
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 122
    :cond_6
    new-instance v0, Lcom/roblox/client/h/b;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/roblox/client/h/b;-><init>(Ljava/util/List;I)V

    .line 123
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 127
    invoke-virtual {v3}, Lcom/roblox/client/chat/a/e;->size()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/roblox/client/h/d;)Lcom/roblox/client/h/d$a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/roblox/client/h/d;->f:Lcom/roblox/client/h/d$a;

    return-object v0
.end method

.method private a(Lcom/roblox/client/chat/a/d;Ljava/util/HashSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/chat/a/d;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/d;->d()Ljava/util/ArrayList;

    move-result-object v2

    .line 148
    if-eqz v2, :cond_0

    .line 149
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 150
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v4

    .line 151
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method private a(ZII)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/roblox/client/h/d;->f:Lcom/roblox/client/h/d$a;

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/roblox/client/h/d;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/d$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/roblox/client/h/d$1;-><init>(Lcom/roblox/client/h/d;ZII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/roblox/client/h/t$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iget v0, p0, Lcom/roblox/client/h/d;->e:I

    invoke-direct {p0, v1, v0, v1}, Lcom/roblox/client/h/d;->a(ZII)V

    .line 133
    return-void
.end method

.method public g()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 44
    iget v0, p0, Lcom/roblox/client/h/d;->e:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/roblox/client/h/d;->d:I

    mul-int/2addr v0, v1

    .line 46
    iget v1, p0, Lcom/roblox/client/h/d;->e:I

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/h/d;->a(II)I

    move-result v0

    .line 48
    const/4 v1, 0x1

    iget v2, p0, Lcom/roblox/client/h/d;->e:I

    invoke-direct {p0, v1, v2, v0}, Lcom/roblox/client/h/d;->a(ZII)V

    .line 49
    return-void
.end method
