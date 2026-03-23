.class public Lcom/roblox/platform/http/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Lb/w;

.field protected d:Ld/c$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/roblox/platform/http/c/f;->b:Ljava/lang/String;

    .line 23
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/roblox/platform/http/c/f;->a:Ljava/lang/String;

    .line 24
    return-void

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/platform/http/c/f;->a()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method public a(Lb/w;)Lcom/roblox/platform/http/c/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/w;",
            ")",
            "Lcom/roblox/platform/http/c/f",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/roblox/platform/http/c/f;->c:Lb/w;

    .line 36
    return-object p0
.end method

.method public a(Ld/c$a;)Lcom/roblox/platform/http/c/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/c$a;",
            ")",
            "Lcom/roblox/platform/http/c/f",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/roblox/platform/http/c/f;->d:Ld/c$a;

    .line 41
    return-object p0
.end method

.method protected a(Ljava/lang/String;)Ld/m;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ld/m$a;

    invoke-direct {v0}, Ld/m$a;-><init>()V

    .line 48
    invoke-virtual {v0, p1}, Ld/m$a;->a(Ljava/lang/String;)Ld/m$a;

    .line 49
    iget-object v1, p0, Lcom/roblox/platform/http/c/f;->c:Lb/w;

    invoke-virtual {v0, v1}, Ld/m$a;->a(Lb/w;)Ld/m$a;

    .line 50
    iget-object v1, p0, Lcom/roblox/platform/http/c/f;->d:Ld/c$a;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/roblox/platform/http/c/f;->d:Ld/c$a;

    invoke-virtual {v0, v1}, Ld/m$a;->a(Ld/c$a;)Ld/m$a;

    .line 53
    :cond_0
    invoke-static {}, Ld/a/a/a;->a()Ld/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/m$a;->a(Ld/e$a;)Ld/m$a;

    .line 54
    invoke-virtual {v0}, Ld/m$a;->a()Ld/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/roblox/platform/http/c/f;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/roblox/platform/http/c/f;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/roblox/platform/http/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/platform/http/c/f;->a(Ljava/lang/String;)Ld/m;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Ld/m;->a(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 66
    iget-object v0, p0, Lcom/roblox/platform/http/c/f;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/roblox/platform/http/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/roblox/platform/http/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/platform/http/c/f;->a(Ljava/lang/String;)Ld/m;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Ld/m;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "roblox.com"

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
