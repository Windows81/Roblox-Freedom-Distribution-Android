.class public La/a/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static transient o:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "uuid"
    .end annotation
.end field

.field public b:J
    .annotation runtime Lcom/google/gson/a/c;
        a = "timestamp"
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "lang"
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "langVersion"
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "agent"
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "agentVersion"
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/a/c;
        a = "attributes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/a/c;
        a = "threads"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "La/a/g/b/h;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "mainThread"
    .end annotation
.end field

.field public j:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "classifiers"
    .end annotation
.end field

.field public k:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/a/c;
        a = "annotations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/a/c;
        a = "sourceCode"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "La/a/g/b/e;",
            ">;"
        }
    .end annotation
.end field

.field public transient m:La/a/g/b/d;

.field public transient n:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, La/a/g/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/g/a;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;La/a/g/b/d;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "La/a/g/b/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "java"

    .line 45
    iput-object v0, p0, La/a/g/a;->c:Ljava/lang/String;

    const-string v0, "backtrace-android"

    .line 57
    iput-object v0, p0, La/a/g/a;->e:Ljava/lang/String;

    if-nez p2, :cond_0

    return-void

    .line 122
    :cond_0
    iput-object p1, p0, La/a/g/a;->n:Landroid/content/Context;

    .line 123
    iput-object p2, p0, La/a/g/a;->m:La/a/g/b/d;

    .line 125
    invoke-direct {p0}, La/a/g/a;->b()V

    .line 126
    invoke-direct {p0}, La/a/g/a;->c()V

    .line 127
    invoke-direct {p0, p3}, La/a/g/a;->b(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 144
    sget-object v0, La/a/g/a;->o:Ljava/lang/String;

    const-string v1, "Setting annotations"

    invoke-static {v0, v1}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, La/a/g/a;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "error.message"

    .line 148
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, La/a/g/a;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    invoke-static {v0, p1}, La/a/g/b/b;->a(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, La/a/g/a;->k:Ljava/util/Map;

    return-void
.end method

.method private b()V
    .locals 3

    .line 175
    sget-object v0, La/a/g/a;->o:Ljava/lang/String;

    const-string v1, "Setting report information"

    invoke-static {v0, v1}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, La/a/g/a;->m:La/a/g/b/d;

    iget-object v0, v0, La/a/g/b/d;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/g/a;->a:Ljava/lang/String;

    .line 177
    iget-object v0, p0, La/a/g/a;->m:La/a/g/b/d;

    iget-wide v0, v0, La/a/g/b/d;->b:J

    iput-wide v0, p0, La/a/g/a;->b:J

    .line 178
    iget-object v0, p0, La/a/g/a;->m:La/a/g/b/d;

    iget-object v0, v0, La/a/g/b/d;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, La/a/g/a;->m:La/a/g/b/d;

    iget-object v2, v2, La/a/g/b/d;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, La/a/g/a;->j:[Ljava/lang/String;

    const-string v0, "java.version"

    .line 179
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/g/a;->d:Ljava/lang/String;

    const-string v0, "3.0.2"

    .line 180
    iput-object v0, p0, La/a/g/a;->f:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 160
    sget-object v0, La/a/g/a;->o:Ljava/lang/String;

    const-string v1, "Setting attributes"

    invoke-static {v0, v1}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, La/a/g/b/c;

    iget-object v1, p0, La/a/g/a;->n:Landroid/content/Context;

    iget-object v2, p0, La/a/g/a;->m:La/a/g/b/d;

    invoke-direct {v0, v1, v2, p1}, La/a/g/b/c;-><init>(Landroid/content/Context;La/a/g/b/d;Ljava/util/Map;)V

    .line 163
    iget-object p1, v0, La/a/g/b/c;->a:Ljava/util/Map;

    iput-object p1, p0, La/a/g/a;->g:Ljava/util/Map;

    .line 165
    new-instance p1, La/a/b/b;

    iget-object v1, p0, La/a/g/a;->n:Landroid/content/Context;

    invoke-direct {p1, v1}, La/a/b/b;-><init>(Landroid/content/Context;)V

    .line 166
    iget-object v1, p0, La/a/g/a;->g:Ljava/util/Map;

    invoke-virtual {p1}, La/a/b/b;->a()Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 168
    invoke-virtual {v0}, La/a/g/b/c;->a()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, La/a/g/a;->a(Ljava/util/Map;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 187
    sget-object v0, La/a/g/a;->o:Ljava/lang/String;

    const-string v1, "Setting threads information"

    invoke-static {v0, v1}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, La/a/g/b/g;

    iget-object v1, p0, La/a/g/a;->m:La/a/g/b/d;

    iget-object v1, v1, La/a/g/b/d;->i:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, La/a/g/b/g;-><init>(Ljava/util/ArrayList;)V

    .line 189
    invoke-virtual {v0}, La/a/g/b/g;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/a/g/a;->i:Ljava/lang/String;

    .line 190
    iget-object v0, v0, La/a/g/b/g;->a:Ljava/util/HashMap;

    iput-object v0, p0, La/a/g/a;->h:Ljava/util/Map;

    .line 191
    new-instance v0, La/a/g/b/f;

    iget-object v1, p0, La/a/g/a;->m:La/a/g/b/d;

    iget-object v1, v1, La/a/g/b/d;->i:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, La/a/g/b/f;-><init>(Ljava/util/ArrayList;)V

    .line 192
    iget-object v1, v0, La/a/g/b/f;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, La/a/g/b/f;->a:Ljava/util/Map;

    :goto_0
    iput-object v0, p0, La/a/g/a;->l:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, La/a/g/a;->n:Landroid/content/Context;

    iget-object v1, p0, La/a/g/a;->m:La/a/g/b/d;

    iget-object v1, v1, La/a/g/b/d;->h:Ljava/util/List;

    invoke-static {v0, v1}, La/a/b/c;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
