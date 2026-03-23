.class public La/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static transient d:Ljava/lang/String;


# instance fields
.field protected a:Landroid/content/Context;

.field public final b:La/a/e/b;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:La/a/e/a;

.field private f:La/a/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, La/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;La/a/b;La/a/e/b;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "La/a/b;",
            "La/a/e/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, La/a/a/a;->f:La/a/d/a;

    .line 128
    iput-object p1, p0, La/a/a/a;->a:Landroid/content/Context;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object p4, p0, La/a/a/a;->c:Ljava/util/Map;

    if-eqz p3, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    new-instance p3, La/a/c;

    invoke-direct {p3}, La/a/c;-><init>()V

    :goto_1
    iput-object p3, p0, La/a/a/a;->b:La/a/e/b;

    .line 131
    new-instance p1, La/a/h/a;

    invoke-direct {p1, p2}, La/a/h/a;-><init>(La/a/b;)V

    invoke-direct {p0, p1}, La/a/a/a;->a(La/a/e/a;)V

    .line 132
    iget-object p1, p0, La/a/a/a;->b:La/a/e/b;

    invoke-interface {p1}, La/a/e/b;->a()V

    return-void
.end method

.method private a(La/a/g/a/a;La/a/d/c;)La/a/d/c;
    .locals 1

    .line 198
    new-instance v0, La/a/a/a$1;

    invoke-direct {v0, p0, p2, p1}, La/a/a/a$1;-><init>(La/a/a/a;La/a/d/c;La/a/g/a/a;)V

    return-object v0
.end method

.method private a(La/a/e/a;)V
    .locals 1

    .line 38
    iput-object p1, p0, La/a/a/a;->e:La/a/e/a;

    .line 39
    iget-object v0, p0, La/a/a/a;->b:La/a/e/b;

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0, p1}, La/a/e/b;->a(La/a/e/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(La/a/d/a;)V
    .locals 0

    .line 150
    iput-object p1, p0, La/a/a/a;->f:La/a/d/a;

    return-void
.end method

.method public a(La/a/g/b/d;La/a/d/c;)V
    .locals 3

    .line 186
    new-instance v0, La/a/g/a;

    iget-object v1, p0, La/a/a/a;->a:Landroid/content/Context;

    iget-object v2, p0, La/a/a/a;->c:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, La/a/g/a;-><init>(Landroid/content/Context;La/a/g/b/d;Ljava/util/Map;)V

    .line 188
    iget-object v1, p0, La/a/a/a;->b:La/a/e/b;

    iget-object v2, p0, La/a/a/a;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v2}, La/a/e/b;->a(La/a/g/b/d;Ljava/util/Map;)La/a/g/a/a;

    move-result-object p1

    .line 190
    iget-object v1, p0, La/a/a/a;->f:La/a/d/a;

    if-eqz v1, :cond_0

    .line 191
    invoke-interface {v1, v0}, La/a/d/a;->onEvent(La/a/g/a;)La/a/g/a;

    move-result-object v0

    .line 194
    :cond_0
    iget-object v1, p0, La/a/a/a;->e:La/a/e/a;

    invoke-direct {p0, p1, p2}, La/a/a/a;->a(La/a/g/a/a;La/a/d/c;)La/a/d/c;

    move-result-object p1

    invoke-interface {v1, v0, p1}, La/a/e/a;->a(La/a/g/a;La/a/d/c;)V

    return-void
.end method
