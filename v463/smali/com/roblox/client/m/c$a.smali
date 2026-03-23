.class Lcom/roblox/client/m/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/m/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/roblox/client/m/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/roblox/client/m/e$a;

    invoke-direct {v0}, Lcom/roblox/client/m/e$a;-><init>()V

    invoke-virtual {v0}, Lcom/roblox/client/m/e$a;->a()Lcom/roblox/client/m/e;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/m/c$a;->a:Lcom/roblox/client/m/e;

    return-void
.end method
