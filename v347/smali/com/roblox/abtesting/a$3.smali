.class Lcom/roblox/abtesting/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/abtesting/a;->a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/roblox/abtesting/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/abtesting/a$a;

.field final synthetic b:Lcom/roblox/abtesting/a;


# direct methods
.method constructor <init>(Lcom/roblox/abtesting/a;Lcom/roblox/abtesting/a$a;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/roblox/abtesting/a$3;->b:Lcom/roblox/abtesting/a;

    iput-object p2, p0, Lcom/roblox/abtesting/a$3;->a:Lcom/roblox/abtesting/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 3

    .prologue
    .line 392
    const-string v0, "ABTestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTestsFromNetwork. Response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 393
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 395
    iget-object v0, p0, Lcom/roblox/abtesting/a$3;->b:Lcom/roblox/abtesting/a;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/abtesting/a;->a(Lcom/roblox/abtesting/a;Ljava/lang/String;)V

    .line 404
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/roblox/abtesting/a$3;->a:Lcom/roblox/abtesting/a$a;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/roblox/abtesting/a$3;->a:Lcom/roblox/abtesting/a$a;

    invoke-interface {v0}, Lcom/roblox/abtesting/a$a;->a()V

    .line 407
    :cond_1
    return-void

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/roblox/abtesting/a$3;->b:Lcom/roblox/abtesting/a;

    invoke-static {v0}, Lcom/roblox/abtesting/a;->a(Lcom/roblox/abtesting/a;)Lcom/roblox/client/i/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/roblox/abtesting/a$3;->b:Lcom/roblox/abtesting/a;

    invoke-static {v0}, Lcom/roblox/abtesting/a;->a(Lcom/roblox/abtesting/a;)Lcom/roblox/client/i/f;

    move-result-object v0

    const-string v1, "Android-Fetch-ABTests-Failed"

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/roblox/client/http/j;)V
    .locals 0

    .prologue
    .line 412
    return-void
.end method
