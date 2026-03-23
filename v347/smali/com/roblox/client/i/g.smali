.class public Lcom/roblox/client/i/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/i/g$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static b:Lcom/b/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/roblox/client/i/g;->a:Z

    return-void
.end method

.method public static a()Lcom/b/a/a/k;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/roblox/client/i/g;->b:Lcom/b/a/a/k;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 20
    sget-object v0, Lcom/roblox/client/i/g;->b:Lcom/b/a/a/k;

    if-nez v0, :cond_2

    .line 21
    new-instance v0, Lcom/b/a/a/c/a$a;

    invoke-direct {v0, p0}, Lcom/b/a/a/c/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/b/a/a/c/a$a;->c(I)Lcom/b/a/a/c/a$a;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v2}, Lcom/b/a/a/c/a$a;->b(I)Lcom/b/a/a/c/a$a;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v2}, Lcom/b/a/a/c/a$a;->d(I)Lcom/b/a/a/c/a$a;

    move-result-object v0

    const/16 v1, 0x78

    .line 25
    invoke-virtual {v0, v1}, Lcom/b/a/a/c/a$a;->a(I)Lcom/b/a/a/c/a$a;

    move-result-object v0

    .line 27
    sget-boolean v1, Lcom/roblox/client/i/g;->a:Z

    if-eqz v1, :cond_0

    .line 28
    new-instance v1, Lcom/roblox/client/i/g$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/roblox/client/i/g$a;-><init>(Lcom/roblox/client/i/g$1;)V

    invoke-virtual {v0, v1}, Lcom/b/a/a/c/a$a;->a(Lcom/b/a/a/f/a;)Lcom/b/a/a/c/a$a;

    .line 30
    :cond_0
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {v0, p1}, Lcom/b/a/a/c/a$a;->a(Ljava/lang/String;)Lcom/b/a/a/c/a$a;

    .line 33
    :cond_1
    invoke-virtual {v0}, Lcom/b/a/a/c/a$a;->a()Lcom/b/a/a/c/a;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/b/a/a/k;

    invoke-direct {v1, v0}, Lcom/b/a/a/k;-><init>(Lcom/b/a/a/c/a;)V

    sput-object v1, Lcom/roblox/client/i/g;->b:Lcom/b/a/a/k;

    .line 36
    :cond_2
    return-void
.end method
