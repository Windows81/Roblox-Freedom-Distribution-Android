.class public Lcom/roblox/client/locale/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/locale/f$b;,
        Lcom/roblox/client/locale/f$a;
    }
.end annotation


# instance fields
.field a:Lcom/roblox/client/locale/a/a;

.field b:Lcom/roblox/client/locale/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/roblox/client/locale/a/a;

    invoke-direct {v0}, Lcom/roblox/client/locale/a/a;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/locale/f;->a:Lcom/roblox/client/locale/a/a;

    .line 16
    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/locale/f;->b:Lcom/roblox/client/locale/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/roblox/client/locale/f$a;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/roblox/client/locale/f;->a(Landroid/content/Context;ZLcom/roblox/client/locale/f$a;)V

    .line 20
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/roblox/client/locale/f$b;)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/roblox/client/locale/f;->a:Lcom/roblox/client/locale/a/a;

    iget-object v1, p0, Lcom/roblox/client/locale/f;->b:Lcom/roblox/client/locale/a;

    invoke-virtual {v1}, Lcom/roblox/client/locale/a;->d()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/locale/f$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/roblox/client/locale/f$2;-><init>(Lcom/roblox/client/locale/f;Lcom/roblox/client/locale/f$b;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Ljava/util/Locale;Lcom/roblox/client/locale/d;)V

    .line 67
    return-void
.end method

.method public a(Landroid/content/Context;ZLcom/roblox/client/locale/f$a;)V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/roblox/client/locale/f;->a:Lcom/roblox/client/locale/a/a;

    iget-object v1, p0, Lcom/roblox/client/locale/f;->b:Lcom/roblox/client/locale/a;

    invoke-virtual {v1}, Lcom/roblox/client/locale/a;->d()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/locale/f$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/roblox/client/locale/f$1;-><init>(Lcom/roblox/client/locale/f;ZLandroid/content/Context;Lcom/roblox/client/locale/f$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Ljava/util/Locale;Lcom/roblox/client/locale/d;)V

    .line 46
    return-void
.end method
