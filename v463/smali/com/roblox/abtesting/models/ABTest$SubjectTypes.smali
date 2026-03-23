.class public final enum Lcom/roblox/abtesting/models/ABTest$SubjectTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/abtesting/models/ABTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubjectTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/abtesting/models/ABTest$SubjectTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

.field public static final enum BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

.field public static final enum USER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    const-string v1, "USER_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->USER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    .line 30
    new-instance v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    const-string v1, "BROWSER_TRACKER_ID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    .line 28
    sget-object v4, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->USER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->$VALUES:[Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/abtesting/models/ABTest$SubjectTypes;
    .locals 1

    .line 28
    const-class v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    return-object p0
.end method

.method public static values()[Lcom/roblox/abtesting/models/ABTest$SubjectTypes;
    .locals 1

    .line 28
    sget-object v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->$VALUES:[Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    invoke-virtual {v0}, [Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    return-object v0
.end method
