.class Lcom/roblox/client/locale/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/locale/a/a;->a(Ljava/util/Locale;Lcom/roblox/client/locale/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/d",
        "<",
        "Lb/ac;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/locale/d;

.field final synthetic b:Lcom/roblox/client/locale/a/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/a/a;Lcom/roblox/client/locale/d;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/roblox/client/locale/a/a$1;->b:Lcom/roblox/client/locale/a/a;

    iput-object p2, p0, Lcom/roblox/client/locale/a/a$1;->a:Lcom/roblox/client/locale/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b;Ld/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;",
            "Ld/l",
            "<",
            "Lb/ac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/roblox/client/locale/a/a$1;->b:Lcom/roblox/client/locale/a/a;

    invoke-static {p2}, Lcom/roblox/client/util/l;->a(Ld/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ld/l;->a()I

    move-result v2

    iget-object v3, p0, Lcom/roblox/client/locale/a/a$1;->a:Lcom/roblox/client/locale/d;

    invoke-virtual {v0, v1, v2, v3}, Lcom/roblox/client/locale/a/a;->a(Ljava/lang/String;ILcom/roblox/client/locale/d;)V

    .line 45
    return-void
.end method

.method public a(Ld/b;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/roblox/client/locale/a/a$1;->b:Lcom/roblox/client/locale/a/a;

    iget-object v1, p0, Lcom/roblox/client/locale/a/a$1;->a:Lcom/roblox/client/locale/d;

    invoke-virtual {v0, v1}, Lcom/roblox/client/locale/a/a;->a(Lcom/roblox/client/locale/d;)V

    .line 50
    return-void
.end method
