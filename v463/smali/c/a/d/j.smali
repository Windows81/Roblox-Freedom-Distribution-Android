.class public final Lc/a/d/j;
.super Lc/ad;
.source "SourceFile"


# instance fields
.field private final a:Lc/s;

.field private final b:Ld/e;


# direct methods
.method public constructor <init>(Lc/s;Ld/e;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lc/ad;-><init>()V

    .line 28
    iput-object p1, p0, Lc/a/d/j;->a:Lc/s;

    .line 29
    iput-object p2, p0, Lc/a/d/j;->b:Ld/e;

    return-void
.end method


# virtual methods
.method public a()Lc/v;
    .locals 2

    .line 33
    iget-object v0, p0, Lc/a/d/j;->a:Lc/s;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lc/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {v0}, Lc/v;->a(Ljava/lang/String;)Lc/v;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b()J
    .locals 2

    .line 38
    iget-object v0, p0, Lc/a/d/j;->a:Lc/s;

    invoke-static {v0}, Lc/a/d/f;->a(Lc/s;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ld/e;
    .locals 1

    .line 42
    iget-object v0, p0, Lc/a/d/j;->b:Ld/e;

    return-object v0
.end method
