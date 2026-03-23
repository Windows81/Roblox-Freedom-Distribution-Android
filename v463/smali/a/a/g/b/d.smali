.class public La/a/g/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/UUID;

.field public b:J

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Exception;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/a/g/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1, p2, v0}, La/a/g/b/d;-><init>(Ljava/lang/Exception;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/util/Map;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, La/a/g/b/d;->a:Ljava/util/UUID;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, La/a/g/b/d;->b:J

    const/4 v0, 0x0

    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, La/a/g/b/d;->c:Ljava/lang/Boolean;

    const-string v1, ""

    .line 39
    iput-object v1, p0, La/a/g/b/d;->d:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 175
    new-instance p2, La/a/g/b/d$1;

    invoke-direct {p2, p0}, La/a/g/b/d$1;-><init>(La/a/g/b/d;)V

    :cond_0
    iput-object p2, p0, La/a/g/b/d;->e:Ljava/util/Map;

    if-nez p3, :cond_1

    .line 177
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    iput-object p3, p0, La/a/g/b/d;->h:Ljava/util/List;

    .line 178
    iput-object p1, p0, La/a/g/b/d;->g:Ljava/lang/Exception;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 179
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, La/a/g/b/d;->c:Ljava/lang/Boolean;

    .line 180
    new-instance p2, La/a/g/e;

    invoke-direct {p2, p1}, La/a/g/e;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p2}, La/a/g/e;->a()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, La/a/g/b/d;->i:Ljava/util/ArrayList;

    .line 182
    iget-object p2, p0, La/a/g/b/d;->c:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La/a/g/b/d;->d:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public static a(La/a/g/b/d;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/g/b/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object p0, p0, La/a/g/b/d;->e:Ljava/util/Map;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    if-nez p1, :cond_1

    return-object p0

    .line 205
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/Map;)La/a/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "La/a/g/a;"
        }
    .end annotation

    .line 188
    new-instance v0, La/a/g/a;

    invoke-direct {v0, p1, p0, p2}, La/a/g/a;-><init>(Landroid/content/Context;La/a/g/b/d;Ljava/util/Map;)V

    return-object v0
.end method
