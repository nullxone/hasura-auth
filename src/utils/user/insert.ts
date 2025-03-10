import { gqlSdk } from '../gql-sdk';
import {
  InsertUserMutation,
  InsertUserMutationVariables,
} from '../__generated__/graphql-request';

type UserInput = InsertUserMutationVariables['user'];
type UserOutput = NonNullable<InsertUserMutation['insertAuthUser']>;

export const insertUser = async (user: UserInput): Promise<UserOutput> => {
  const { insertAuthUser: insertUser } = await gqlSdk.insertUser({
    user,
  });
  if (!insertUser) {
    throw new Error('Could not insert user');
  }
  return insertUser;
};
