.class Lcom/roblox/client/q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/locale/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/q;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/q;


# direct methods
.method constructor <init>(Lcom/roblox/client/q;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/roblox/client/q$1;->a:Lcom/roblox/client/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    const-string v0, "rbx.locale"

    if-eqz p1, :cond_0

    const-string p1, "(OnAppResume) Recreating activity due to Locale change."

    .line 232
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p1, p0, Lcom/roblox/client/q$1;->a:Lcom/roblox/client/q;

    invoke-virtual {p1}, Lcom/roblox/client/q;->recreate()V

    goto :goto_0

    :cond_0
    const-string p1, "Retrieved locale same as current locale"

    .line 235
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
