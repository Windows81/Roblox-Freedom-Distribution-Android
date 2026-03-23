.class Lcom/roblox/client/locale/d/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/locale/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/locale/d/a;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/roblox/client/locale/d/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/d/a;Landroid/content/Context;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/roblox/client/locale/d/a$1;->b:Lcom/roblox/client/locale/d/a;

    iput-object p2, p0, Lcom/roblox/client/locale/d/a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;Lcom/roblox/client/locale/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/client/locale/f;",
            ")V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/roblox/client/locale/d/a$1;->b:Lcom/roblox/client/locale/d/a;

    iget-object v1, p0, Lcom/roblox/client/locale/d/a$1;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2}, Lcom/roblox/client/locale/d/a;->a(Lcom/roblox/client/locale/d/a;Landroid/content/Context;Ljava/util/HashMap;Lcom/roblox/client/locale/f;)V

    return-void
.end method
