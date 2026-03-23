.class public final Lb/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/t;


# instance fields
.field public final a:Lb/w;


# direct methods
.method public constructor <init>(Lb/w;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lb/a/b/a;->a:Lb/w;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lb/t$a;)Lb/ab;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    check-cast p1, Lb/a/d/i;

    .line 37
    invoke-virtual {p1}, Lb/a/d/i;->a()Lb/z;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lb/a/d/i;->c()Lb/a/b/g;

    move-result-object v2

    .line 41
    invoke-virtual {v1}, Lb/z;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 42
    :goto_0
    iget-object v3, p0, Lb/a/b/a;->a:Lb/w;

    invoke-virtual {v2, v3, v0}, Lb/a/b/g;->a(Lb/w;Z)Lb/a/d/h;

    move-result-object v0

    .line 43
    invoke-virtual {v2}, Lb/a/b/g;->b()Lb/a/b/c;

    move-result-object v3

    .line 45
    invoke-virtual {p1, v1, v2, v0, v3}, Lb/a/d/i;->a(Lb/z;Lb/a/b/g;Lb/a/d/h;Lb/i;)Lb/ab;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
