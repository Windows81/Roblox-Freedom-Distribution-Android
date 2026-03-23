.class public Lcom/roblox/platform/http/c/j;
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

.field protected c:Lc/x;

.field protected d:Le/c$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/roblox/platform/http/c/j;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/platform/http/c/j;->a()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/roblox/platform/http/c/j;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lc/x;)Lcom/roblox/platform/http/c/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/x;",
            ")",
            "Lcom/roblox/platform/http/c/j<",
            "TT;>;"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/roblox/platform/http/c/j;->c:Lc/x;

    return-object p0
.end method

.method public a(Le/c$a;)Lcom/roblox/platform/http/c/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c$a;",
            ")",
            "Lcom/roblox/platform/http/c/j<",
            "TT;>;"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/roblox/platform/http/c/j;->d:Le/c$a;

    return-object p0
.end method

.method protected a(Ljava/lang/String;)Le/m;
    .locals 1

    .line 47
    new-instance v0, Le/m$a;

    invoke-direct {v0}, Le/m$a;-><init>()V

    .line 48
    invoke-virtual {v0, p1}, Le/m$a;->a(Ljava/lang/String;)Le/m$a;

    .line 49
    iget-object p1, p0, Lcom/roblox/platform/http/c/j;->c:Lc/x;

    invoke-virtual {v0, p1}, Le/m$a;->a(Lc/x;)Le/m$a;

    .line 50
    iget-object p1, p0, Lcom/roblox/platform/http/c/j;->d:Le/c$a;

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {v0, p1}, Le/m$a;->a(Le/c$a;)Le/m$a;

    .line 53
    :cond_0
    invoke-static {}, Le/a/a/a;->a()Le/a/a/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/m$a;->a(Le/e$a;)Le/m$a;

    .line 54
    invoke-virtual {v0}, Le/m$a;->a()Le/m;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/roblox/platform/http/c/j;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/roblox/platform/http/c/j;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/roblox/platform/http/c/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/platform/http/c/j;->a(Ljava/lang/String;)Le/m;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Le/m;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 66
    iget-object v0, p0, Lcom/roblox/platform/http/c/j;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/roblox/platform/http/c/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/roblox/platform/http/c/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/platform/http/c/j;->a(Ljava/lang/String;)Le/m;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Le/m;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "roblox.com"

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
