.class Lcom/roblox/client/locale/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/locale/b/a;->a(Ljava/util/Locale;Lcom/roblox/client/locale/g;)V
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
.field final synthetic a:Lcom/roblox/client/locale/g;

.field final synthetic b:Lcom/roblox/client/locale/b/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/b/a;Lcom/roblox/client/locale/g;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/roblox/client/locale/b/a$1;->b:Lcom/roblox/client/locale/b/a;

    iput-object p2, p0, Lcom/roblox/client/locale/b/a$1;->a:Lcom/roblox/client/locale/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/b;Le/l;)V
    .locals 2
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

    .line 44
    iget-object p1, p0, Lcom/roblox/client/locale/b/a$1;->b:Lcom/roblox/client/locale/b/a;

    invoke-static {p2}, Lcom/roblox/client/ae/p;->a(Le/l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Le/l;->a()I

    move-result p2

    iget-object v1, p0, Lcom/roblox/client/locale/b/a$1;->a:Lcom/roblox/client/locale/g;

    invoke-virtual {p1, v0, p2, v1}, Lcom/roblox/client/locale/b/a;->a(Ljava/lang/String;ILcom/roblox/client/locale/g;)V

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

    .line 49
    iget-object p1, p0, Lcom/roblox/client/locale/b/a$1;->b:Lcom/roblox/client/locale/b/a;

    iget-object p2, p0, Lcom/roblox/client/locale/b/a$1;->a:Lcom/roblox/client/locale/g;

    invoke-virtual {p1, p2}, Lcom/roblox/client/locale/b/a;->a(Lcom/roblox/client/locale/g;)V

    return-void
.end method
