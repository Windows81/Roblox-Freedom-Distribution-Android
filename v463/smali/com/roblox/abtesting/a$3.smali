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

    .line 440
    iput-object p1, p0, Lcom/roblox/abtesting/a$3;->b:Lcom/roblox/abtesting/a;

    iput-object p2, p0, Lcom/roblox/abtesting/a$3;->a:Lcom/roblox/abtesting/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 2

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTestsFromNetwork. Response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". ResponseBody: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ABTestManager"

    .line 443
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/roblox/abtesting/a$3;->b:Lcom/roblox/abtesting/a;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/roblox/abtesting/a;->a(Lcom/roblox/abtesting/a;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_0
    iget-object p1, p0, Lcom/roblox/abtesting/a$3;->b:Lcom/roblox/abtesting/a;

    invoke-virtual {p1}, Lcom/roblox/abtesting/a;->q()Lcom/roblox/client/s/f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 450
    iget-object p1, p0, Lcom/roblox/abtesting/a$3;->b:Lcom/roblox/abtesting/a;

    invoke-virtual {p1}, Lcom/roblox/abtesting/a;->q()Lcom/roblox/client/s/f;

    move-result-object p1

    const-string v0, "Android-Fetch-ABTests-Failed"

    invoke-virtual {p1, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    .line 455
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/roblox/abtesting/a$3;->a:Lcom/roblox/abtesting/a$a;

    if-eqz p1, :cond_2

    .line 456
    invoke-interface {p1}, Lcom/roblox/abtesting/a$a;->a()V

    :cond_2
    return-void
.end method

.method public b(Lcom/roblox/client/http/j;)V
    .locals 0

    return-void
.end method
