.class Lcom/roblox/client/locale/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/locale/b/b;->a(Landroid/content/Context;Lcom/roblox/client/locale/f;Lcom/roblox/client/locale/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/d<",
        "Lc/ad;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/roblox/client/locale/h;

.field final synthetic c:Lcom/roblox/client/locale/b/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/b/b;Landroid/content/Context;Lcom/roblox/client/locale/h;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/roblox/client/locale/b/b$1;->c:Lcom/roblox/client/locale/b/b;

    iput-object p2, p0, Lcom/roblox/client/locale/b/b$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/roblox/client/locale/b/b$1;->b:Lcom/roblox/client/locale/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/b;Le/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b<",
            "Lc/ad;",
            ">;",
            "Le/l<",
            "Lc/ad;",
            ">;)V"
        }
    .end annotation

    .line 40
    iget-object p1, p0, Lcom/roblox/client/locale/b/b$1;->c:Lcom/roblox/client/locale/b/b;

    iget-object v0, p0, Lcom/roblox/client/locale/b/b$1;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/roblox/client/ae/p;->a(Le/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Le/l;->a()I

    move-result p2

    iget-object v2, p0, Lcom/roblox/client/locale/b/b$1;->b:Lcom/roblox/client/locale/h;

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/roblox/client/locale/b/b;->a(Landroid/content/Context;Ljava/lang/String;ILcom/roblox/client/locale/h;)V

    return-void
.end method

.method public a(Le/b;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b<",
            "Lc/ad;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 45
    iget-object p1, p0, Lcom/roblox/client/locale/b/b$1;->c:Lcom/roblox/client/locale/b/b;

    iget-object p2, p0, Lcom/roblox/client/locale/b/b$1;->b:Lcom/roblox/client/locale/h;

    invoke-virtual {p1, p2}, Lcom/roblox/client/locale/b/b;->a(Lcom/roblox/client/locale/h;)V

    return-void
.end method
