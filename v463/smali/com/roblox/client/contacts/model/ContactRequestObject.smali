.class public Lcom/roblox/client/contacts/model/ContactRequestObject;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final JSON_FIELD_COUNTRY:Ljava/lang/String; = "Country"

.field public static final JSON_FIELD_EMAIL:Ljava/lang/String; = "Email"

.field public static final JSON_FIELD_FIRST_NAME:Ljava/lang/String; = "FirstName"

.field public static final JSON_FIELD_LAST_NAME:Ljava/lang/String; = "LastName"

.field public static final JSON_FIELD_MIDDLE_NAME:Ljava/lang/String; = "MiddleName"

.field public static final JSON_FIELD_PHONE:Ljava/lang/String; = "Phone"


# instance fields
.field private fields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/roblox/client/datastructures/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private sourceId:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/roblox/client/contacts/model/ContactRequestObject;->sourceId:J

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/roblox/client/contacts/model/ContactRequestObject;->fields:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/roblox/client/datastructures/NameValuePair;

    invoke-direct {v0, p1, p2}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/roblox/client/contacts/model/ContactRequestObject;->fields:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
