.class Lcom/roblox/client/i/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/roblox/client/i/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/roblox/client/i/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/roblox/client/i/e;-><init>(Lcom/roblox/client/i/e$1;)V

    sput-object v0, Lcom/roblox/client/i/e$a;->a:Lcom/roblox/client/i/e;

    return-void
.end method
